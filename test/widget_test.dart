import 'package:flutter_test/flutter_test.dart';
import 'package:formula/localization/app_language.dart';
import 'package:formula/main.dart';
import 'package:formula/theme/app_theme_mode.dart';

void main() {
  testWidgets('FORMULA app starts successfully', (WidgetTester tester) async {
    final appLanguage = AppLanguage();
    final appThemeMode = AppThemeMode();

    await tester.pumpWidget(
      Formula(appLanguage: appLanguage, appThemeMode: appThemeMode),
    );

    await tester.pumpAndSettle();

    expect(find.byType(Formula), findsOneWidget);
  });
}
