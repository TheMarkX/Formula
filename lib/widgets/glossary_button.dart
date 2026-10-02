import 'package:flutter/material.dart';

import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/screens/glossary_screen.dart';

class GlossaryButton extends StatelessWidget {
  const GlossaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colors = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (_) => const GlossaryScreen()),
        );
      },
      tooltip: l10n.glossary,
      icon: Icon(
        Icons.menu_book_outlined,
        color: colors.onSurface.withValues(alpha: 0.8),
        size: 25,
      ),
    );
  }
}
