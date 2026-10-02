import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/reaction_step.dart';

class IngredientModelViewerController {
  IngredientModelViewerController._();

  static final ValueNotifier<IngredientData?> ingredient =
      ValueNotifier<IngredientData?>(null);

  static final ValueNotifier<bool> visible = ValueNotifier<bool>(false);

  static void show(IngredientData newIngredient) {
    ingredient.value = newIngredient;
    visible.value = true;
  }

  static void close() {
    visible.value = false;
  }
}

class IngredientModelViewerHost extends StatefulWidget {
  final Widget child;

  const IngredientModelViewerHost({super.key, required this.child});

  @override
  State<IngredientModelViewerHost> createState() =>
      _IngredientModelViewerHostState();
}

class _IngredientModelViewerHostState extends State<IngredientModelViewerHost> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        ValueListenableBuilder<bool>(
          valueListenable: IngredientModelViewerController.visible,
          builder: (context, isVisible, _) {
            if (!isVisible) {
              return const SizedBox.shrink();
            }

            return const _ModelViewerDialog();
          },
        ),
      ],
    );
  }
}

class _ModelViewerDialog extends StatelessWidget {
  const _ModelViewerDialog();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Material(
      color: colors.scrim.withValues(alpha: 0.65),
      child: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 700),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: colors.outlineVariant),
              boxShadow: [
                BoxShadow(
                  color: colors.shadow.withValues(alpha: 0.2),
                  blurRadius: 24,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: ValueListenableBuilder<IngredientData?>(
                valueListenable: IngredientModelViewerController.ingredient,
                builder: (context, ingredient, _) {
                  if (ingredient == null) {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ingredient.name,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: colors.onSurface,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                        ),
                      ),
                      const SizedBox(height: 20),

                      Container(
                        width: double.infinity,
                        height: 320,
                        decoration: BoxDecoration(
                          color: colors.surfaceContainerHighest.withValues(
                            alpha: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: colors.outlineVariant),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: ModelViewer(
                          key: const ValueKey('shared-model-viewer'),
                          src: ingredient.modelPath,
                          alt: ingredient.name,
                          cameraControls: true,
                          autoRotate: false,
                          disableZoom: false,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      const SizedBox(height: 20),

                      Text(
                        ingredient.description,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colors.onSurfaceVariant,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 24),

                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: IngredientModelViewerController.close,
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
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
