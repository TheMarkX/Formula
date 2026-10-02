// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'FORMULA';

  @override
  String get play => 'PLAY';

  @override
  String get settings => 'SETTINGS';

  @override
  String get glossary => 'GLOSSARY';

  @override
  String get about => 'ABOUT';

  @override
  String get close => 'CLOSE';

  @override
  String get back => 'BACK';

  @override
  String get language => 'LANGUAGE';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get productSelectionTitle => 'WHAT WOULD YOU LIKE';

  @override
  String get productSelectionSubtitle => 'TO MAKE?';

  @override
  String get toothpaste => 'TOOTHPASTE';

  @override
  String get mouthwash => 'MOUTHWASH';

  @override
  String get toothPowder => 'TOOTH POWDER';

  @override
  String get proceedToNextStep => 'PROCEED TO NEXT STEP';

  @override
  String get learnAboutThisStep => 'LEARN ABOUT THIS STEP';

  @override
  String get processOverview => 'PROCESS OVERVIEW';

  @override
  String get finalProduct => 'FINAL PRODUCT';

  @override
  String get makeAnotherProduct => 'MAKE ANOTHER PRODUCT';

  @override
  String get website => 'WHO IS M. ABDULREHMAN?';

  @override
  String get github => 'GITHUB';

  @override
  String get openSourceLicenses => 'OPEN SOURCE LICENSES';

  @override
  String get aboutDescription =>
      'A pharmaceutical formulation game designed to introduce the principles and processes involved in preparing common oral-care formulations.';

  @override
  String get madeBy =>
      'Made by Muhammad Abdul Rehman (937-2025) of Faculty of Pharmacy, Hamdard University, Karachi, Pakistan';

  @override
  String get copyright => '© 2026 TheMarkX';

  @override
  String stepNumber(int number) {
    return 'STEP $number';
  }

  @override
  String get combine => 'COMBINE';

  @override
  String get intermediateProductSuccess =>
      'Intermediate Product Successfully Made';

  @override
  String get formulaComplete => 'FORMULA COMPLETE';

  @override
  String youMadeProduct(String product) {
    return 'YOU MADE $product!';
  }

  @override
  String get allStepsCompleted =>
      'All formulation steps have been successfully completed.';

  @override
  String get backToHome => 'BACK TO HOME';

  @override
  String processOverviewTitle(String product) {
    return '$product PROCESS';
  }

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get glossaryMeaning => 'Meaning';

  @override
  String get glossaryExample => 'Example';

  @override
  String get searchGlossary => 'Search glossary...';

  @override
  String get clearSearch => 'Clear search';

  @override
  String get noTermsFound => 'No terms found';

  @override
  String glossaryTermCount(int count) {
    return '$count TERMS';
  }

  @override
  String get formulationQuantities => 'Formulation quantities';

  @override
  String get noFormulationData => 'No formulation data available.';

  @override
  String get formulationQuantityNotice =>
      'Quantities will be added when the USP/BP formulation data is available.';

  @override
  String get quantityNotEntered => 'Not entered';

  @override
  String get choosePreferredLanguage => 'Choose your preferred language.';

  @override
  String get sendFeedback => 'Open Mailing App';

  @override
  String get sendFeedbackDescription =>
      'Have a suggestion, found a problem, or noticed something that could be improved? Send us your feedback directly through your email app.';

  @override
  String get cancel => 'Cancel';

  @override
  String get contact => 'Contact Us';

  @override
  String get theme => 'Theme';

  @override
  String get chooseTheme => 'Choose how the app should look.';

  @override
  String get themeSystem => 'System';

  @override
  String get themeSystemSubtitle => 'Follow your device settings';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeDarkSubtitle => 'Always use dark mode';

  @override
  String get themeLight => 'Light';

  @override
  String get themeLightSubtitle => 'Always use light mode';
}
