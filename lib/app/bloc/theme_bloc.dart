import 'package:flutter_boilerplate/index.dart';

// Theme Event
abstract class ThemeEvent {}

class ToggleTheme extends ThemeEvent {}

// Theme State
class ThemeState {
  final ThemeData themeData;

  ThemeState({required this.themeData});
}

// Theme BLoC
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: AppTheme.lightTheme)) {
    on<ToggleTheme>((event, emit) {
      final newTheme = state.themeData.brightness == Brightness.light ? AppTheme.darkTheme : AppTheme.lightTheme;
      emit(ThemeState(themeData: newTheme));
    });
  }
}
