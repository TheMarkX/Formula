import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage extends ChangeNotifier {
  static const String _languageKey = 'app_language';

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  bool get isEnglish => _locale.languageCode == 'en';
  bool get isSpanish => _locale.languageCode == 'es';
  bool get isFrench => _locale.languageCode == 'fr';
  bool get isGerman => _locale.languageCode == 'de';

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
  ];

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();

    final savedLanguage = prefs.getString(_languageKey);

    if (savedLanguage != null && savedLanguage.isNotEmpty) {
      _locale = _localeFromLanguageCode(savedLanguage);
    } else {
      _locale = _deviceLocale();
    }

    notifyListeners();
  }

  Future<void> setLanguage(String languageCode) async {
    final locale = _localeFromLanguageCode(languageCode);

    _locale = locale;

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_languageKey, _languageCodeFromLocale(locale));

    notifyListeners();
  }

  Future<void> setEnglish() async {
    await setLanguage('en');
  }

  Future<void> setSpanish() async {
    await setLanguage('es');
  }

  Future<void> setFrench() async {
    await setLanguage('fr');
  }

  Future<void> setGerman() async {
    await setLanguage('de');
  }

  Locale _deviceLocale() {
    final deviceLocale = PlatformDispatcher.instance.locale;

    return _findSupportedLocale(deviceLocale);
  }

  Locale _findSupportedLocale(Locale locale) {
    // Exact match.
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode &&
          supportedLocale.scriptCode == locale.scriptCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }

    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return supportedLocale;
      }
    }

    return const Locale('en');
  }

  Locale _localeFromLanguageCode(String languageCode) {
    for (final locale in supportedLocales) {
      if (_languageCodeFromLocale(locale) == languageCode) {
        return locale;
      }
    }

    return const Locale('en');
  }

  String _languageCodeFromLocale(Locale locale) {
    if (locale.scriptCode != null) {
      return '${locale.languageCode}_${locale.scriptCode}';
    }

    if (locale.countryCode != null) {
      return '${locale.languageCode}_${locale.countryCode}';
    }

    return locale.languageCode;
  }
}

class AppLanguageScope extends InheritedNotifier<AppLanguage> {
  const AppLanguageScope({
    super.key,
    required AppLanguage appLanguage,
    required super.child,
  }) : super(notifier: appLanguage);

  static AppLanguage of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<AppLanguageScope>();

    assert(scope != null, 'AppLanguageScope was not found above this context.');

    return scope!.notifier!;
  }
}
