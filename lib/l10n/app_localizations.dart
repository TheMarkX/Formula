import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'FORMULA'**
  String get appName;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'PLAY'**
  String get play;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'SETTINGS'**
  String get settings;

  /// No description provided for @glossary.
  ///
  /// In en, this message translates to:
  /// **'GLOSSARY'**
  String get glossary;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get about;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'CLOSE'**
  String get close;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'BACK'**
  String get back;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'LANGUAGE'**
  String get language;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get spanish;

  /// No description provided for @productSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'WHAT WOULD YOU LIKE'**
  String get productSelectionTitle;

  /// No description provided for @productSelectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'TO MAKE?'**
  String get productSelectionSubtitle;

  /// No description provided for @toothpaste.
  ///
  /// In en, this message translates to:
  /// **'TOOTHPASTE'**
  String get toothpaste;

  /// No description provided for @mouthwash.
  ///
  /// In en, this message translates to:
  /// **'MOUTHWASH'**
  String get mouthwash;

  /// No description provided for @toothPowder.
  ///
  /// In en, this message translates to:
  /// **'TOOTH POWDER'**
  String get toothPowder;

  /// No description provided for @proceedToNextStep.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO NEXT STEP'**
  String get proceedToNextStep;

  /// No description provided for @learnAboutThisStep.
  ///
  /// In en, this message translates to:
  /// **'LEARN ABOUT THIS STEP'**
  String get learnAboutThisStep;

  /// No description provided for @processOverview.
  ///
  /// In en, this message translates to:
  /// **'PROCESS OVERVIEW'**
  String get processOverview;

  /// No description provided for @finalProduct.
  ///
  /// In en, this message translates to:
  /// **'FINAL PRODUCT'**
  String get finalProduct;

  /// No description provided for @makeAnotherProduct.
  ///
  /// In en, this message translates to:
  /// **'MAKE ANOTHER PRODUCT'**
  String get makeAnotherProduct;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'WHO IS M. ABDULREHMAN?'**
  String get website;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'GITHUB'**
  String get github;

  /// No description provided for @openSourceLicenses.
  ///
  /// In en, this message translates to:
  /// **'OPEN SOURCE LICENSES'**
  String get openSourceLicenses;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'A pharmaceutical formulation game designed to introduce the principles and processes involved in preparing common oral-care formulations.'**
  String get aboutDescription;

  /// No description provided for @madeBy.
  ///
  /// In en, this message translates to:
  /// **'Made by Muhammad Abdul Rehman (937-2025) of Faculty of Pharmacy, Hamdard University, Karachi, Pakistan'**
  String get madeBy;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'© 2026 TheMarkX'**
  String get copyright;

  /// No description provided for @stepNumber.
  ///
  /// In en, this message translates to:
  /// **'STEP {number}'**
  String stepNumber(int number);

  /// No description provided for @combine.
  ///
  /// In en, this message translates to:
  /// **'COMBINE'**
  String get combine;

  /// No description provided for @intermediateProductSuccess.
  ///
  /// In en, this message translates to:
  /// **'Intermediate Product Successfully Made'**
  String get intermediateProductSuccess;

  /// No description provided for @formulaComplete.
  ///
  /// In en, this message translates to:
  /// **'FORMULA COMPLETE'**
  String get formulaComplete;

  /// No description provided for @youMadeProduct.
  ///
  /// In en, this message translates to:
  /// **'YOU MADE {product}!'**
  String youMadeProduct(String product);

  /// No description provided for @allStepsCompleted.
  ///
  /// In en, this message translates to:
  /// **'All formulation steps have been successfully completed.'**
  String get allStepsCompleted;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'BACK TO HOME'**
  String get backToHome;

  /// No description provided for @processOverviewTitle.
  ///
  /// In en, this message translates to:
  /// **'{product} PROCESS'**
  String processOverviewTitle(String product);

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// No description provided for @glossaryMeaning.
  ///
  /// In en, this message translates to:
  /// **'Meaning'**
  String get glossaryMeaning;

  /// No description provided for @glossaryExample.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get glossaryExample;

  /// No description provided for @searchGlossary.
  ///
  /// In en, this message translates to:
  /// **'Search glossary...'**
  String get searchGlossary;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get clearSearch;

  /// No description provided for @noTermsFound.
  ///
  /// In en, this message translates to:
  /// **'No terms found'**
  String get noTermsFound;

  /// No description provided for @glossaryTermCount.
  ///
  /// In en, this message translates to:
  /// **'{count} TERMS'**
  String glossaryTermCount(int count);

  /// No description provided for @formulationQuantities.
  ///
  /// In en, this message translates to:
  /// **'Formulation quantities'**
  String get formulationQuantities;

  /// No description provided for @noFormulationData.
  ///
  /// In en, this message translates to:
  /// **'No formulation data available.'**
  String get noFormulationData;

  /// No description provided for @formulationQuantityNotice.
  ///
  /// In en, this message translates to:
  /// **'Quantities will be added when the USP/BP formulation data is available.'**
  String get formulationQuantityNotice;

  /// No description provided for @quantityNotEntered.
  ///
  /// In en, this message translates to:
  /// **'Not entered'**
  String get quantityNotEntered;

  /// No description provided for @choosePreferredLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language.'**
  String get choosePreferredLanguage;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'Open Mailing App'**
  String get sendFeedback;

  /// No description provided for @sendFeedbackDescription.
  ///
  /// In en, this message translates to:
  /// **'Have a suggestion, found a problem, or noticed something that could be improved? Send us your feedback directly through your email app.'**
  String get sendFeedbackDescription;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contact;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose how the app should look.'**
  String get chooseTheme;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeSystemSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Follow your device settings'**
  String get themeSystemSubtitle;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeDarkSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Always use dark mode'**
  String get themeDarkSubtitle;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeLightSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Always use light mode'**
  String get themeLightSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
