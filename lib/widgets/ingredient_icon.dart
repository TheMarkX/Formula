import 'package:flutter/material.dart';

class IngredientIcon extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool selected;
  final VoidCallback? onTap;
  final VoidCallback? onInfoTap;

  const IngredientIcon({
    super.key,
    required this.name,
    required this.icon,
    required this.selected,
    this.onTap,
    this.onInfoTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  shape: const CircleBorder(),
                  child: InkWell(
                    onTap: onTap,
                    customBorder: const CircleBorder(),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selected
                            ? colors.primary.withValues(alpha: 0.14)
                            : colors.surfaceContainerHighest.withValues(
                                alpha: 0.55,
                              ),
                        border: Border.all(
                          color: selected
                              ? colors.primary
                              : colors.outlineVariant,
                          width: selected ? 3 : 1,
                        ),
                      ),
                      child: Icon(
                        icon,
                        color: selected
                            ? colors.primary
                            : colors.onSurfaceVariant,
                        size: 48,
                      ),
                    ),
                  ),
                ),
              ),
              
              Positioned(
                top: -5,
                right: -5,
                child: Material(
                  color: colors.surface,
                  shape: const CircleBorder(),
                  child: InkWell(
                    onTap: onInfoTap,
                    customBorder: const CircleBorder(),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.surface,
                        border: Border.all(color: colors.outline),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '?',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: colors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 180,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(
              color: selected ? colors.primary : colors.onSurfaceVariant,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
