import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';
import 'package:formula/screens/reaction_screen.dart';

class ProceedButton extends StatelessWidget {
  final ReactionStep? nextStep;
  final List<ReactionStep> processSteps;
  final VoidCallback? onComplete;

  const ProceedButton({
    super.key,
    required this.nextStep,
    required this.processSteps,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final enabled = nextStep != null || onComplete != null;

    return SizedBox(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: !enabled
            ? null
            : () {
                if (nextStep != null) {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (_) => ReactionScreen(
                        step: nextStep!,
                        processSteps: processSteps,
                      ),
                    ),
                  );
                } else {
                  onComplete?.call();
                }
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          disabledBackgroundColor: colors.onSurface.withValues(alpha: 0.08),
          disabledForegroundColor: colors.onSurface.withValues(alpha: 0.35),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          l10n.proceedToNextStep.toUpperCase(),
          textAlign: TextAlign.center,
          style: theme.textTheme.labelLarge?.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
    );
  }
}
