import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:formula/l10n/app_localizations.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static final Uri githubUrl = Uri.parse('https://github.com/TheMarkX');

  static final Uri websiteUrl = Uri.parse('https://itsabdulrehman.vercel.app/');

  void showLicenses(BuildContext context, AppLocalizations l10n) {
    showLicensePage(
      context: context,
      applicationName: l10n.appName,
      applicationVersion: '1.0.0',
      applicationLegalese: l10n.copyright,
    );
  }

  Future<void> openExternalUrl(Uri url) async {
    final opened = await launchUrl(url, mode: LaunchMode.externalApplication);

    if (!opened) {
      throw Exception('Could not open $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.about.toUpperCase(),
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
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 156,
                    height: 156,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: colors.surface,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: colors.outlineVariant),
                    ),
                    child: Image.asset(
                      'assets/splash/logo.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.science_outlined,
                          size: 88,
                          color: colors.primary,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 28),

                  Text(
                    l10n.appName.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: colors.primary.withValues(alpha: 0.10),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: colors.primary.withValues(alpha: 0.30),
                      ),
                    ),
                    child: Text(
                      l10n.version('1.0.0'),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: colors.primary,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Divider(color: colors.outlineVariant, height: 1),

                  const SizedBox(height: 28),

                  Text(
                    l10n.aboutDescription,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colors.onSurfaceVariant,
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    l10n.madeBy,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 28),

                  Text(
                    l10n.copyright,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 32),

                  _AboutButton(
                    icon: Icons.language_rounded,
                    label: l10n.website,
                    onPressed: () => openExternalUrl(websiteUrl),
                  ),

                  const SizedBox(height: 12),

                  _AboutButton(
                    icon: Icons.code_rounded,
                    label: l10n.github,
                    onPressed: () => openExternalUrl(githubUrl),
                  ),

                  const SizedBox(height: 12),

                  _AboutButton(
                    icon: Icons.description_outlined,
                    label: l10n.openSourceLicenses,
                    onPressed: () => showLicenses(context, l10n),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AboutButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _AboutButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      height: 54,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 21),
        label: Text(
          label.toUpperCase(),
          textAlign: TextAlign.center,
          style: theme.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.onSurface,
          side: BorderSide(color: colors.outlineVariant, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
