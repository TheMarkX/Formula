import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeMode extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getString(_themeKey);

    switch (savedTheme) {
      case 'light':
        _themeMode = ThemeMode.light;
        break;

      case 'dark':
        _themeMode = ThemeMode.dark;
        break;

      case 'system':
      default:
        _themeMode = ThemeMode.system;
        break;
    }

    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_themeKey, switch (mode) {
      ThemeMode.light => 'light',
      ThemeMode.system => 'system',
      ThemeMode.dark => 'dark',
    });
  }
}

class AppThemeModeScope extends InheritedNotifier<AppThemeMode> {
  const AppThemeModeScope({
    super.key,
    required AppThemeMode notifier,
    required super.child,
  }) : super(notifier: notifier);

  static AppThemeMode of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<AppThemeModeScope>();

    assert(scope != null, 'AppThemeModeScope not found in widget tree.');

    return scope!.notifier!;
  }
}
