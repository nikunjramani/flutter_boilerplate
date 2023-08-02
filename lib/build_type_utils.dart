import 'package:flutter_boilerplate/build_type.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BuildTypeUtils {
  BuildTypeUtils._();

  /// This build type will be used when some errors occurred
  /// while loading build type from environment
  static const fallbackBuildType = BuildType.development;

  static final BuildTypeUtils instance = BuildTypeUtils._();

  /// Build type override
  BuildType localBuildType = BuildType.none;

  /// Current build type.
  ///
  /// First, init [BuildTypeUtils] to load build type from environment.
  BuildType buildType = fallbackBuildType;

  /// Init [BuildTypeUtils] allows you to use [buildType],
  /// [isDevelopmentBuild], [isStagingBuild], [isProductionBuild].
  ///
  /// Before init, current [buildType] equal to [fallbackBuildType].
  Future<void> init() async {
    /// Load the .env file contents into dotenv
    await dotenv.load().onError((error, stackTrace) {
    });

    buildType = getBuildTypeFromEnvironment();
  }

  /// Use `--dart-define=Environment=develop` etc.
  /// as additional run arguments.
  ///
  /// Or define [BUILD_TYPE] in `assets/.env`
  ///
  /// </br>
  ///
  /// Build type override order:
  /// - [localBuildType]
  /// - [--dart-define=Environment] run argument
  /// - [BUILD_TYPE] from [assets/.env]
  /// - [fallbackBuildType]
  BuildType getBuildTypeFromEnvironment() {
    if (instance.localBuildType != BuildType.none) {
      return instance.localBuildType;
    }

    const environment = String.fromEnvironment('Environment');
    if (environment.isNotEmpty) {
      return getTypeByString(environment);
    }

    if (dotenv.isInitialized) {
      final type = dotenv.maybeGet('BUILD_TYPE');
      if (type != null) {
        return getTypeByString(type);
      }
    }

    return fallbackBuildType;
  }

  BuildType getTypeByString(String type) {
    switch (type) {
      case 'development':
        return BuildType.development;
      case 'staging':
        return BuildType.staging;
      case 'production':
        return BuildType.production;
      default:
        return fallbackBuildType;
    }
  }
}

T getBuildTypeData<T>({
  required T develop,
  required T stage,
  required T release,
}) {
  switch (buildType) {
    case BuildType.development:
      return develop;
    case BuildType.staging:
      return stage;
    case BuildType.production:
      return release;
    default:
      return develop;
  }
}
