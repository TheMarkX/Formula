import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';
import 'package:formula/widgets/formulation_quantity_button.dart';
import 'package:formula/widgets/glossary_button.dart';
import 'package:formula/widgets/ingredient_info_dialogue.dart';

class ProcessOverviewScreen extends StatelessWidget {
  final String productName;
  final List<ReactionStep> steps;

  const ProcessOverviewScreen({
    super.key,
    required this.productName,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.processOverviewTitle(productName.toUpperCase()),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        actions: [
          const GlossaryButton(),
          FormulationQuantityButton(steps: steps),
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: steps.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        l10n.allStepsCompleted,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
                    itemCount: steps.length,
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Divider(color: colors.outlineVariant, height: 1),
                    ),
                    itemBuilder: (context, index) {
                      return _ProcessStepCard(step: steps[index], index: index);
                    },
                  ),
          ),
        ),
      ),
    );
  }
}

class _ProcessStepCard extends StatelessWidget {
  final ReactionStep step;
  final int index;

  const _ProcessStepCard({required this.step, required this.index});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                l10n.stepNumber(step.stepNumber),
                style: theme.textTheme.labelLarge?.copyWith(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              step.heading,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge?.copyWith(
                color: colors.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 16,
              children: [
                for (int i = 0; i < step.reactants.length; i++) ...[
                  _OverviewIngredient(
                    ingredient: step.reactants[i],
                    onInfoTap: () {
                      IngredientInfoDialog.show(context, step.reactants[i]);
                    },
                  ),
                  if (i < step.reactants.length - 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(
                        Icons.add_rounded,
                        color: colors.primary,
                        size: 25,
                      ),
                    ),
                ],
              ],
            ),

            const SizedBox(height: 20),

            Icon(
              Icons.arrow_downward_rounded,
              color: colors.onSurfaceVariant,
              size: 30,
            ),

            const SizedBox(height: 20),

            _OverviewIngredient(
              ingredient: step.product,
              onInfoTap: () {
                IngredientInfoDialog.show(context, step.product);
              },
              isProduct: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _OverviewIngredient extends StatelessWidget {
  final IngredientData ingredient;
  final VoidCallback onInfoTap;
  final bool isProduct;

  const _OverviewIngredient({
    required this.ingredient,
    required this.onInfoTap,
    this.isProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return SizedBox(
      width: 108,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isProduct
                      ? colors.primary.withValues(alpha: 0.12)
                      : colors.surfaceContainerHighest,
                  border: Border.all(
                    color: isProduct
                        ? colors.primary.withValues(alpha: 0.65)
                        : colors.outlineVariant,
                    width: isProduct ? 1.5 : 1,
                  ),
                ),
                child: Icon(
                  ingredient.icon,
                  color: isProduct ? colors.primary : colors.onSurfaceVariant,
                  size: 32,
                ),
              ),

              Positioned(
                top: -4,
                right: -4,
                child: Material(
                  color: colors.surface,
                  shape: CircleBorder(
                    side: BorderSide(color: colors.outlineVariant),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: onInfoTap,
                    customBorder: const CircleBorder(),
                    child: SizedBox(
                      width: 28,
                      height: 28,
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: colors.primary,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Text(
            ingredient.name,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colors.onSurface,
              fontWeight: FontWeight.w600,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }
}
