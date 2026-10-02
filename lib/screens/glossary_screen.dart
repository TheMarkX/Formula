import 'package:flutter/material.dart';

import 'package:formula/data/glossary_data.dart';
import 'package:formula/l10n/app_localizations.dart';
import 'package:formula/models/glossary_entry.dart';

class GlossaryScreen extends StatefulWidget {
  const GlossaryScreen({super.key});

  @override
  State<GlossaryScreen> createState() => _GlossaryScreenState();
}

class _GlossaryScreenState extends State<GlossaryScreen> {
  String searchQuery = '';

  List<GlossaryEntry> get localizedEntries {
    final locale = Localizations.localeOf(context);
    return getGlossaryEntries(locale);
  }

  List<GlossaryEntry> get filteredEntries {
    final entries = localizedEntries;
    final query = searchQuery.trim().toLowerCase();

    if (query.isEmpty) return entries;

    return entries.where((entry) {
      return entry.term.toLowerCase().contains(query) ||
          entry.definition.toLowerCase().contains(query) ||
          entry.example.toLowerCase().contains(query);
    }).toList();
  }

  void showGlossaryEntry(GlossaryEntry entry, AppLocalizations l10n) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        final theme = Theme.of(dialogContext);
        final colors = theme.colorScheme;

        return AlertDialog(
          backgroundColor: colors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: colors.outlineVariant),
          ),
          title: Text(
            entry.term,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(
              color: colors.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _SectionLabel(text: l10n.glossaryMeaning),

                const SizedBox(height: 8),

                Text(
                  entry.definition,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colors.onSurface.withValues(alpha: 0.85),
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 22),

                _SectionLabel(text: l10n.glossaryExample),

                const SizedBox(height: 8),

                Text(
                  entry.example,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colors.onSurface.withValues(alpha: 0.85),
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(l10n.close.toUpperCase()),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final entries = filteredEntries;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 16,
                start: 12,
                end: 12,
                bottom: 12,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    tooltip: l10n.back,
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),

                  Expanded(
                    child: Text(
                      l10n.glossary,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: colors.onSurface,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(width: 48),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 20),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                style: TextStyle(color: colors.onSurface),
                cursorColor: colors.primary,
                decoration: InputDecoration(
                  hintText: l10n.searchGlossary,
                  prefixIcon: const Icon(Icons.search_rounded),
                  suffixIcon: searchQuery.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              searchQuery = '';
                            });
                          },
                          tooltip: l10n.clearSearch,
                          icon: const Icon(Icons.clear_rounded),
                        )
                      : null,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  l10n.glossaryTermCount(entries.length),
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: colors.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: entries.isEmpty
                  ? _EmptyGlossaryState(message: l10n.noTermsFound)
                  : ListView.separated(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
                      itemCount: entries.length,
                      separatorBuilder: (_, _) => Divider(
                        color: colors.outlineVariant.withValues(alpha: 0.5),
                        height: 1,
                      ),
                      itemBuilder: (context, index) {
                        final entry = entries[index];

                        return Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              showGlossaryEntry(entry, l10n);
                            },
                            borderRadius: BorderRadius.circular(14),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 14,
                                horizontal: 8,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: colors.primary.withValues(
                                        alpha: 0.12,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Icon(
                                      Icons.menu_book_outlined,
                                      color: colors.primary,
                                      size: 23,
                                    ),
                                  ),

                                  const SizedBox(width: 14),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          entry.term,
                                          style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                                color: colors.onSurface,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),

                                        const SizedBox(height: 5),

                                        Text(
                                          entry.definition,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall
                                              ?.copyWith(
                                                color: colors.onSurface
                                                    .withValues(alpha: 0.65),
                                                height: 1.5,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 8),

                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: colors.onSurface.withValues(
                                      alpha: 0.45,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;

  const _SectionLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Text(
      text.toUpperCase(),
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
        color: colors.primary,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
    );
  }
}

class _EmptyGlossaryState extends StatelessWidget {
  final String message;

  const _EmptyGlossaryState({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search_off_rounded,
              color: colors.onSurface.withValues(alpha: 0.35),
              size: 52,
            ),

            const SizedBox(height: 16),

            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                color: colors.onSurface.withValues(alpha: 0.65),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
