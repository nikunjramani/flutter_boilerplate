// Localization Event
import 'package:flutter_boilerplate/index.dart';

abstract class LocalizationEvent {}

class ChangeLanguage extends LocalizationEvent {
  final Locale locale;

  ChangeLanguage(this.locale);
}

// Localization State
class LocalizationState {
  final Locale locale;

  LocalizationState(this.locale);
}

// Localization BLoC
class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationState(const Locale('en'))) {
    on<ChangeLanguage>((event, emit) {
      emit(LocalizationState(event.locale));
    });
  }
}
