import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/localization/app_language.dart';
import 'package:formula/theme/app_theme_mode.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appLanguage = AppLanguageScope.of(context);
    final appThemeMode = AppThemeModeScope.of(context);
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final selectedLanguage = appLanguage.locale.languageCode;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.settings,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).maybePop(),
            tooltip: l10n.close,
            icon: const Icon(Icons.close_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                Text(
                  l10n.language,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: colors.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  l10n.choosePreferredLanguage,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),

                const SizedBox(height: 20),

                _LanguageTile(
                  title: 'English',
                  subtitle: 'English',
                  languageCode: 'en',
                  selected: selectedLanguage == 'en',
                  onTap: () => appLanguage.setLanguage('en'),
                ),

                const SizedBox(height: 12),

                _LanguageTile(
                  title: 'Español',
                  subtitle: 'Spanish',
                  languageCode: 'es',
                  selected: selectedLanguage == 'es',
                  onTap: () => appLanguage.setLanguage('es'),
                ),

                const SizedBox(height: 12),

                _LanguageTile(
                  title: 'Français',
                  subtitle: 'French',
                  languageCode: 'fr',
                  selected: selectedLanguage == 'fr',
                  onTap: () => appLanguage.setLanguage('fr'),
                ),

                const SizedBox(height: 12),

                _LanguageTile(
                  title: 'Deutsch',
                  subtitle: 'German',
                  languageCode: 'de',
                  selected: selectedLanguage == 'de',
                  onTap: () => appLanguage.setLanguage('de'),
                ),

                const SizedBox(height: 36),

                Text(
                  l10n.theme,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: colors.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  l10n.chooseTheme,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),

                const SizedBox(height: 20),

                _ThemeTile(
                  title: l10n.themeSystem,
                  subtitle: l10n.themeSystemSubtitle,
                  icon: Icons.brightness_auto_rounded,
                  selected: appThemeMode.themeMode == ThemeMode.system,
                  onTap: () {
                    appThemeMode.setThemeMode(ThemeMode.system);
                  },
                ),

                const SizedBox(height: 12),

                _ThemeTile(
                  title: l10n.themeDark,
                  subtitle: l10n.themeDarkSubtitle,
                  icon: Icons.dark_mode_rounded,
                  selected: appThemeMode.themeMode == ThemeMode.dark,
                  onTap: () {
                    appThemeMode.setThemeMode(ThemeMode.dark);
                  },
                ),

                const SizedBox(height: 12),

                _ThemeTile(
                  title: l10n.themeLight,
                  subtitle: l10n.themeLightSubtitle,
                  icon: Icons.light_mode_rounded,
                  selected: appThemeMode.themeMode == ThemeMode.light,
                  onTap: () {
                    appThemeMode.setThemeMode(ThemeMode.light);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String languageCode;
  final bool selected;
  final VoidCallback onTap;

  const _LanguageTile({
    required this.title,
    required this.subtitle,
    required this.languageCode,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Material(
      color: selected ? colors.primary.withValues(alpha: 0.10) : colors.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected ? colors.primary : colors.outlineVariant,
              width: selected ? 1.8 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: selected
                      ? colors.primary.withValues(alpha: 0.14)
                      : colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.language_rounded,
                  color: selected ? colors.primary : colors.onSurfaceVariant,
                  size: 23,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: colors.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                child: selected
                    ? Icon(
                        Icons.check_circle_rounded,
                        key: ValueKey(languageCode),
                        color: colors.primary,
                        size: 25,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        key: ValueKey('${languageCode}_unselected'),
                        color: colors.outlineVariant,
                        size: 25,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _ThemeTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Material(
      color: selected ? colors.primary.withValues(alpha: 0.10) : colors.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected ? colors.primary : colors.outlineVariant,
              width: selected ? 1.8 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: selected
                      ? colors.primary.withValues(alpha: 0.14)
                      : colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: selected ? colors.primary : colors.onSurfaceVariant,
                  size: 23,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: colors.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                child: selected
                    ? Icon(
                        Icons.check_circle_rounded,
                        key: ValueKey(title),
                        color: colors.primary,
                        size: 25,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        key: ValueKey('${title}_unselected'),
                        color: colors.outlineVariant,
                        size: 25,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
