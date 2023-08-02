import 'package:flutter_boilerplate/build_type_utils.dart';

enum BuildType {
  development,
  staging,
  production,
  none,
}

BuildType get buildType => BuildTypeUtils.instance.buildType;

bool get isDevelopmentBuild => buildType == BuildType.development;

bool get isStagingBuild => buildType == BuildType.staging;

bool get isProductionBuild => buildType == BuildType.production;

bool get isShowDevicePreview => false;

