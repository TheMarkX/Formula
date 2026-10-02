import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/localization/app_language.dart';
import 'package:formula/screens/title_screen.dart';
import 'package:formula/theme/app_theme.dart';
import 'package:formula/theme/app_theme_mode.dart';
import 'package:formula/widgets/ingredient_model_viewer_host.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appLanguage = AppLanguage();
  await appLanguage.load();

  final appThemeMode = AppThemeMode();
  await appThemeMode.load();

  runApp(Formula(appLanguage: appLanguage, appThemeMode: appThemeMode));
}

class Formula extends StatelessWidget {
  final AppLanguage appLanguage;
  final AppThemeMode appThemeMode;

  const Formula({
    super.key,
    required this.appLanguage,
    required this.appThemeMode,
  });

  @override
  Widget build(BuildContext context) {
    return AppLanguageScope(
      appLanguage: appLanguage,
      child: AppThemeModeScope(
        notifier: appThemeMode,
        child: AnimatedBuilder(
          animation: Listenable.merge([appLanguage, appThemeMode]),
          builder: (context, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Formula',
              locale: appLanguage.locale,
              supportedLocales: AppLanguage.supportedLocales,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],

              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: appThemeMode.themeMode,

              home: const TitleScreen(),

              builder: (context, child) {
                return IngredientModelViewerHost(
                  child: child ?? const SizedBox.shrink(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
