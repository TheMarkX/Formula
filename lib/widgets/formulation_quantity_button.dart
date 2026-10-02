import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';
import 'package:formula/models/step_quantity.dart';

class FormulationQuantityButton extends StatelessWidget {
  final List<ReactionStep> steps;

  const FormulationQuantityButton({super.key, required this.steps});

  void _showQuantities(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return _FormulationQuantityDialog(steps: steps);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colors = Theme.of(context).colorScheme;

    return IconButton(
      tooltip: l10n.formulationQuantities,
      onPressed: () => _showQuantities(context),
      icon: Icon(
        Icons.scale_outlined,
        color: colors.onSurface.withValues(alpha: 0.8),
        size: 25,
      ),
    );
  }
}

class _FormulationQuantityDialog extends StatelessWidget {
  final List<ReactionStep> steps;

  const _FormulationQuantityDialog({required this.steps});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Dialog(
      backgroundColor: colors.surface,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: colors.outlineVariant),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 520, maxHeight: 700),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 48, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.scale_outlined, color: colors.primary, size: 34),
                  const SizedBox(height: 12),
                  Text(
                    l10n.formulationQuantities.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: colors.onSurface,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'USP / BP',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (steps.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        l10n.noFormulationData,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    )
                  else
                    ...steps.map((step) => _StepQuantitySection(step: step)),
                  const SizedBox(height: 10),
                  Divider(color: colors.outlineVariant),
                  const SizedBox(height: 10),
                  Text(
                    l10n.formulationQuantityNotice,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        l10n.close.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 4,
              right: 4,
              child: IconButton(
                tooltip: l10n.close,
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
                color: colors.onSurfaceVariant,
                iconSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StepQuantitySection extends StatelessWidget {
  final ReactionStep step;

  const _StepQuantitySection({required this.step});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final quantities = step.quantities.isNotEmpty
        ? step.quantities
        : step.reactants
              .map(
                (ingredient) => StepQuantity(ingredientName: ingredient.name),
              )
              .toList();

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Text(
            l10n.stepNumber(step.stepNumber).toUpperCase(),
            textAlign: TextAlign.center,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            step.heading,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall?.copyWith(
              color: colors.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...quantities.map((quantity) => _QuantityRow(quantity: quantity)),
        ],
      ),
    );
  }
}

class _QuantityRow extends StatelessWidget {
  final StepQuantity quantity;

  const _QuantityRow({required this.quantity});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surfaceContainerHighest.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.outlineVariant.withValues(alpha: 0.7)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              quantity.ingredientName,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: _QuantityValue(
              label: 'USP',
              value: quantity.uspQuantity ?? l10n.quantityNotEntered,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: _QuantityValue(
              label: 'BP',
              value: quantity.bpQuantity ?? l10n.quantityNotEntered,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityValue extends StatelessWidget {
  final String label;
  final String value;

  const _QuantityValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colors.primary,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(
            color: colors.onSurfaceVariant,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
