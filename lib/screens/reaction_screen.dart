import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';
import 'package:formula/screens/product_screen.dart';
import 'package:formula/widgets/formulation_quantity_button.dart';
import 'package:formula/widgets/glossary_button.dart';
import 'package:formula/widgets/ingredient_icon.dart';
import 'package:formula/widgets/ingredient_info_dialogue.dart';

class ReactionScreen extends StatefulWidget {
  final ReactionStep step;
  final List<ReactionStep> processSteps;

  const ReactionScreen({
    super.key,
    required this.step,
    required this.processSteps,
  });

  @override
  State<ReactionScreen> createState() => _ReactionScreenState();
}

class _ReactionScreenState extends State<ReactionScreen> {
  late List<bool> selected;

  @override
  void initState() {
    super.initState();
    selected = List<bool>.filled(widget.step.reactants.length, false);
  }

  bool get canCombine =>
      selected.isNotEmpty && selected.every((isSelected) => isSelected);

  void toggleReactant(int index) {
    setState(() {
      selected[index] = !selected[index];
    });
  }

  void combineIngredients() {
    if (!canCombine) return;

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) =>
            ProductScreen(step: widget.step, processSteps: widget.processSteps),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final step = widget.step;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          l10n.stepNumber(step.stepNumber),
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        actions: [
          const GlossaryButton(),
          FormulationQuantityButton(steps: [step]),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // STEP HEADING
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
              child: Text(
                step.heading,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: colors.onSurface,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < step.reactants.length; i++) ...[
                        IngredientIcon(
                          name: step.reactants[i].name,
                          icon: step.reactants[i].icon,
                          selected: selected[i],
                          onTap: () => toggleReactant(i),
                          onInfoTap: () {
                            IngredientInfoDialog.show(
                              context,
                              step.reactants[i],
                            );
                          },
                        ),
                        if (i < step.reactants.length - 1)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              '+',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium?.copyWith(
                                color: colors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: ElevatedButton.icon(
                    onPressed: canCombine ? combineIngredients : null,
                    icon: const Icon(Icons.science_outlined),
                    label: Text(
                      l10n.combine,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
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
