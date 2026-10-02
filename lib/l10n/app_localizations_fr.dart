// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'FORMULA';

  @override
  String get play => 'JOUER';

  @override
  String get settings => 'PARAMÈTRES';

  @override
  String get glossary => 'GLOSSAIRE';

  @override
  String get about => 'À PROPOS';

  @override
  String get close => 'FERMER';

  @override
  String get back => 'RETOUR';

  @override
  String get language => 'LANGUE';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get productSelectionTitle => 'QUE SOUHAITEZ-VOUS';

  @override
  String get productSelectionSubtitle => 'FABRIQUER ?';

  @override
  String get toothpaste => 'DENTIFRICE';

  @override
  String get mouthwash => 'BAIN DE BOUCHE';

  @override
  String get toothPowder => 'POUDRE DENTAIRE';

  @override
  String get proceedToNextStep => 'PASSER À L\'ÉTAPE SUIVANTE';

  @override
  String get learnAboutThisStep => 'EN SAVOIR PLUS SUR CETTE ÉTAPE';

  @override
  String get processOverview => 'APERÇU DU PROCESSUS';

  @override
  String get finalProduct => 'PRODUIT FINAL';

  @override
  String get makeAnotherProduct => 'FABRIQUER UN AUTRE PRODUIT';

  @override
  String get website => 'QUI EST M. ABDULREHMAN ?';

  @override
  String get github => 'GITHUB';

  @override
  String get openSourceLicenses => 'LICENCES OPEN SOURCE';

  @override
  String get aboutDescription =>
      'Un jeu de formulation pharmaceutique conçu pour présenter les principes et les procédés impliqués dans la préparation de formulations courantes pour les soins bucco-dentaires.';

  @override
  String get madeBy =>
      'Créé par Muhammad Abdul Rehman (937-2025) de la Faculté de Pharmacie, Université Hamdard, Karachi, Pakistan';

  @override
  String get copyright => '© 2026 TheMarkX';

  @override
  String stepNumber(int number) {
    return 'ÉTAPE $number';
  }

  @override
  String get combine => 'MÉLANGER';

  @override
  String get intermediateProductSuccess =>
      'Produit intermédiaire obtenu avec succès';

  @override
  String get formulaComplete => 'FORMULE TERMINÉE';

  @override
  String youMadeProduct(String product) {
    return 'VOUS AVEZ PRÉPARÉ : $product !';
  }

  @override
  String get allStepsCompleted =>
      'Toutes les étapes de la formulation ont été réalisées avec succès.';

  @override
  String get backToHome => 'RETOUR À L\'ACCUEIL';

  @override
  String processOverviewTitle(String product) {
    return 'PROCESSUS : $product';
  }

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get glossaryMeaning => 'Signification';

  @override
  String get glossaryExample => 'Exemple';

  @override
  String get searchGlossary => 'Rechercher dans le glossaire...';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get noTermsFound => 'Aucun terme trouvé';

  @override
  String glossaryTermCount(int count) {
    return '$count TERMES';
  }

  @override
  String get formulationQuantities => 'Quantités de la formulation';

  @override
  String get noFormulationData => 'Aucune donnée de formulation disponible.';

  @override
  String get formulationQuantityNotice =>
      'Les quantités seront ajoutées lorsque les données de formulation USP/BP seront disponibles.';

  @override
  String get quantityNotEntered => 'Non renseignée';

  @override
  String get choosePreferredLanguage => 'Choisissez votre langue préférée.';

  @override
  String get sendFeedback => 'Ouvrir l\'application de messagerie';

  @override
  String get sendFeedbackDescription =>
      'Vous avez une suggestion, trouvé un problème ou remarqué quelque chose à améliorer ? Envoyez-nous vos commentaires directement depuis votre application de messagerie.';

  @override
  String get cancel => 'Annuler';

  @override
  String get contact => 'Contactez-nous';

  @override
  String get theme => 'Thème';

  @override
  String get chooseTheme => 'Choisissez l’apparence de l’application.';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeSystemSubtitle => 'Suivre les réglages de votre appareil';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeDarkSubtitle => 'Toujours utiliser le mode sombre';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeLightSubtitle => 'Toujours utiliser le mode clair';
}
