import 'package:flutter/material.dart';

import 'package:formula/data/mouthwash_steps.dart';
import 'package:formula/data/toothpaste_steps.dart';
import 'package:formula/data/toothpowder_steps.dart';
import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/screens/reaction_screen.dart';
import 'package:formula/screens/title_screen.dart';
import 'package:formula/theme/app_theme.dart';

class ProductSelectionScreen extends StatelessWidget {
  const ProductSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final toothpasteProcess = toothpasteStepsFor(locale);
    final mouthwashProcess = mouthwashStepsFor(locale);
    final toothpowderProcess = toothpowderStepsFor(locale);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // BACK BUTTON
            PositionedDirectional(
              top: 8,
              start: 8,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute<void>(
                      builder: (_) => const TitleScreen(),
                    ),
                    (route) => false,
                  );
                },
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: colors.onSurface,
                  size: 28,
                ),
              ),
            ),

            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 520),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 40),

                      Icon(
                        Icons.biotech_outlined,
                        color: colors.primary,
                        size: 48,
                      ),

                      const SizedBox(height: 20),

                      Text(
                        l10n.productSelectionTitle,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: colors.onSurface,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        l10n.productSelectionSubtitle,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: colors.onSurface.withValues(alpha: 0.65),
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 36),

                      _ProductButton(
                        title: l10n.toothpaste,
                        subtitle: 'TOOTHPASTE',
                        icon: Icons.health_and_safety_outlined,
                        accent: AppColors.toothpaste,
                        onPressed: () {
                          if (toothpasteProcess.isEmpty) return;

                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => ReactionScreen(
                                step: toothpasteProcess.first,
                                processSteps: toothpasteProcess,
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 16),

                      _ProductButton(
                        title: l10n.mouthwash,
                        subtitle: 'MOUTHWASH',
                        icon: Icons.water_drop_outlined,
                        accent: AppColors.mouthwash,
                        onPressed: () {
                          if (mouthwashProcess.isEmpty) return;

                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => ReactionScreen(
                                step: mouthwashProcess.first,
                                processSteps: mouthwashProcess,
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 16),

                      _ProductButton(
                        title: l10n.toothPowder,
                        subtitle: 'TOOTH POWDER',
                        icon: Icons.grain,
                        accent: AppColors.toothpowder,
                        onPressed: () {
                          if (toothpowderProcess.isEmpty) return;

                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => ReactionScreen(
                                step: toothpowderProcess.first,
                                processSteps: toothpowderProcess,
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 28),

                      Center(
                        child: Container(
                          width: 48,
                          height: 4,
                          decoration: BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final VoidCallback onPressed;

  const _ProductButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Material(
      color: theme.cardTheme.color ?? colors.surface,
      borderRadius: BorderRadius.circular(18),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          constraints: const BoxConstraints(minHeight: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: accent.withValues(alpha: 0.45)),
          ),
          child: Row(
            children: [
              Container(width: 5, height: 100, color: accent),

              const SizedBox(width: 16),

              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon, color: accent, size: 29),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colors.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 8),

              Padding(
                padding: const EdgeInsetsDirectional.only(end: 18),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: accent,
                  size: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
