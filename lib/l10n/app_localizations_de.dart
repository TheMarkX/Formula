// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'FORMULA';

  @override
  String get play => 'SPIELEN';

  @override
  String get settings => 'EINSTELLUNGEN';

  @override
  String get glossary => 'GLOSSAR';

  @override
  String get about => 'ÜBER';

  @override
  String get close => 'SCHLIESSEN';

  @override
  String get back => 'ZURÜCK';

  @override
  String get language => 'SPRACHE';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get productSelectionTitle => 'WAS MÖCHTEN SIE';

  @override
  String get productSelectionSubtitle => 'HERSTELLEN?';

  @override
  String get toothpaste => 'ZAHNPASTA';

  @override
  String get mouthwash => 'MUNDSPÜLUNG';

  @override
  String get toothPowder => 'ZAHNPULVER';

  @override
  String get proceedToNextStep => 'ZUM NÄCHSTEN SCHRITT';

  @override
  String get learnAboutThisStep => 'MEHR ÜBER DIESEN SCHRITT';

  @override
  String get processOverview => 'PROZESSÜBERSICHT';

  @override
  String get finalProduct => 'ENDPRODUKT';

  @override
  String get makeAnotherProduct => 'WEITERES PRODUKT HERSTELLEN';

  @override
  String get website => 'WER IST M. ABDULREHMAN?';

  @override
  String get github => 'GITHUB';

  @override
  String get openSourceLicenses => 'OPEN-SOURCE-LIZENZEN';

  @override
  String get aboutDescription =>
      'Ein pharmazeutisches Formulierungsspiel, das in die Prinzipien und Prozesse zur Herstellung gängiger Mundpflegeformulierungen einführt.';

  @override
  String get madeBy =>
      'Erstellt von Muhammad Abdul Rehman (937-2025) an der Fakultät für Pharmazie, Universität Hamdard, Karachi, Pakistan';

  @override
  String get copyright => '© 2026 TheMarkX';

  @override
  String stepNumber(int number) {
    return 'SCHRITT $number';
  }

  @override
  String get combine => 'KOMBINIEREN';

  @override
  String get intermediateProductSuccess =>
      'Zwischenprodukt erfolgreich hergestellt';

  @override
  String get formulaComplete => 'FORMULIERUNG ABGESCHLOSSEN';

  @override
  String youMadeProduct(String product) {
    return '$product WURDE ERFOLGREICH HERGESTELLT!';
  }

  @override
  String get allStepsCompleted =>
      'Alle Formulierungsschritte wurden erfolgreich abgeschlossen.';

  @override
  String get backToHome => 'ZURÜCK ZUR STARTSEITE';

  @override
  String processOverviewTitle(String product) {
    return '$product-PROZESS';
  }

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get glossaryMeaning => 'Bedeutung';

  @override
  String get glossaryExample => 'Beispiel';

  @override
  String get searchGlossary => 'Glossar durchsuchen...';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String get noTermsFound => 'Keine Begriffe gefunden';

  @override
  String glossaryTermCount(int count) {
    return '$count BEGRIFFE';
  }

  @override
  String get formulationQuantities => 'Rezepturmengen';

  @override
  String get noFormulationData => 'Keine Rezepturdaten verfügbar.';

  @override
  String get formulationQuantityNotice =>
      'Die Mengen werden ergänzt, sobald USP-/BP-Rezepturdaten verfügbar sind.';

  @override
  String get quantityNotEntered => 'Nicht eingegeben';

  @override
  String get choosePreferredLanguage => 'Wählen Sie Ihre bevorzugte Sprache.';

  @override
  String get sendFeedback => 'E-Mail-App öffnen';

  @override
  String get sendFeedbackDescription =>
      'Haben Sie einen Vorschlag, ein Problem gefunden oder etwas bemerkt, das verbessert werden könnte? Senden Sie uns Ihr Feedback direkt über Ihre E-Mail-App.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get contact => 'Kontaktieren Sie uns';

  @override
  String get theme => 'Design';

  @override
  String get chooseTheme => 'Wählen Sie das Erscheinungsbild der App.';

  @override
  String get themeSystem => 'System';

  @override
  String get themeSystemSubtitle => 'Geräteeinstellungen verwenden';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeDarkSubtitle => 'Immer den dunklen Modus verwenden';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeLightSubtitle => 'Immer den hellen Modus verwenden';
}
