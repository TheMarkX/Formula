import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';
import 'package:formula/screens/product_selection_screen.dart';
import 'package:formula/screens/process_overview_screen.dart';
import 'package:formula/screens/reaction_screen.dart';
import 'package:formula/widgets/formulation_quantity_button.dart';
import 'package:formula/widgets/ingredient_info_dialogue.dart';

class CelebrationScreen extends StatelessWidget {
  final IngredientData product;
  final List<ReactionStep> processSteps;

  const CelebrationScreen({
    super.key,
    required this.product,
    required this.processSteps,
  });

  void _showProductInfo(BuildContext context) {
    IngredientInfoDialog.show(context, product);
  }

  void _makeAnotherProduct(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute<void>(builder: (_) => const ProductSelectionScreen()),
      (route) => false,
    );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  void _backToLastStep(BuildContext context) {
    if (processSteps.isEmpty) return;

    final lastStep = processSteps.last;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(
        builder: (_) =>
            ReactionScreen(step: lastStep, processSteps: processSteps),
      ),
    );
  }

  void _openProcessOverview(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ProcessOverviewScreen(
          productName: product.name,
          steps: processSteps,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 100, 24, 28),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 480),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 148,
                              height: 148,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colors.primary.withValues(alpha: 0.12),
                                border: Border.all(
                                  color: colors.primary.withValues(alpha: 0.6),
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                product.icon,
                                color: colors.primary,
                                size: 64,
                              ),
                            ),
                            Positioned(
                              top: -5,
                              right: -5,
                              child: Material(
                                color: colors.surface,
                                shape: CircleBorder(
                                  side: BorderSide(
                                    color: colors.outlineVariant,
                                  ),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () => _showProductInfo(context),
                                  customBorder: const CircleBorder(),
                                  child: SizedBox(
                                    width: 34,
                                    height: 34,
                                    child: Icon(
                                      Icons.info_outline_rounded,
                                      color: colors.primary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        Text(
                          l10n.formulaComplete,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: colors.primary,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            height: 1.2,
                          ),
                        ),

                        const SizedBox(height: 16),

                        Text(
                          l10n.youMadeProduct(product.name.toUpperCase()),
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: colors.onSurface,
                            fontWeight: FontWeight.bold,
                            height: 1.4,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          l10n.allStepsCompleted,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: colors.onSurfaceVariant,
                            height: 1.6,
                          ),
                        ),

                        const SizedBox(height: 40),

                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton.icon(
                            onPressed: () => _makeAnotherProduct(context),
                            icon: const Icon(Icons.science_outlined),
                            label: Text(
                              l10n.makeAnotherProduct,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 14),

                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: OutlinedButton.icon(
                            onPressed: () => _backToHome(context),
                            icon: const Icon(Icons.home_outlined),
                            label: Text(
                              l10n.backToHome,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 8,
              left: 8,
              child: IconButton(
                onPressed: processSteps.isEmpty
                    ? null
                    : () => _backToLastStep(context),
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: colors.onSurface,
                  size: 28,
                ),
              ),
            ),

            Positioned(
              top: 8,
              right: 8,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FormulationQuantityButton(steps: processSteps),
                  const SizedBox(width: 8),
                  OutlinedButton.icon(
                    onPressed: () => _openProcessOverview(context),
                    icon: const Icon(Icons.account_tree_outlined, size: 18),
                    label: Text(l10n.processOverview),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
