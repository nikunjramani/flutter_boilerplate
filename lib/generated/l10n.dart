// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LocalString {
  LocalString();

  static LocalString? _current;

  static LocalString get current {
    assert(_current != null,
        'No instance of LocalString was loaded. Try to initialize the LocalString delegate before accessing LocalString.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LocalString> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LocalString();
      LocalString._current = instance;

      return instance;
    });
  }

  static LocalString of(BuildContext context) {
    final instance = LocalString.maybeOf(context);
    assert(instance != null,
        'No instance of LocalString present in the widget tree. Did you add LocalString.delegate in localizationsDelegates?');
    return instance!;
  }

  static LocalString? maybeOf(BuildContext context) {
    return Localizations.of<LocalString>(context, LocalString);
  }

  /// `Authentication Failure`
  String get authentication_failure {
    return Intl.message(
      'Authentication Failure',
      name: 'authentication_failure',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get server_error {
    return Intl.message(
      'Server Error',
      name: 'server_error',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LocalString> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LocalString> load(Locale locale) => LocalString.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
