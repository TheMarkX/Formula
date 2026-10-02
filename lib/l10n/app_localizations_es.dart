// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'FORMULA';

  @override
  String get play => 'JUGAR';

  @override
  String get settings => 'AJUSTES';

  @override
  String get glossary => 'GLOSARIO';

  @override
  String get about => 'ACERCA DE';

  @override
  String get close => 'CERRAR';

  @override
  String get back => 'ATRÁS';

  @override
  String get language => 'IDIOMA';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get productSelectionTitle => '¿QUÉ TE GUSTARÍA';

  @override
  String get productSelectionSubtitle => 'HACER?';

  @override
  String get toothpaste => 'PASTA DENTAL';

  @override
  String get mouthwash => 'ENJUAGUE BUCAL';

  @override
  String get toothPowder => 'POLVO DENTAL';

  @override
  String get proceedToNextStep => 'CONTINUAR AL SIGUIENTE PASO';

  @override
  String get learnAboutThisStep => 'APRENDER SOBRE ESTE PASO';

  @override
  String get processOverview => 'RESUMEN DEL PROCESO';

  @override
  String get finalProduct => 'PRODUCTO FINAL';

  @override
  String get makeAnotherProduct => 'HACER OTRO PRODUCTO';

  @override
  String get website => '¿QUIÉN ES M. ABDULREHMAN?';

  @override
  String get github => 'GITHUB';

  @override
  String get openSourceLicenses => 'LICENCIAS DE CÓDIGO ABIERTO';

  @override
  String get aboutDescription =>
      'Un juego de formulación farmacéutica diseñado para introducir los principios y procesos involucrados en la preparación de formulaciones comunes para el cuidado bucal.';

  @override
  String get madeBy =>
      'Creado por Muhammad Abdul Rehman (937-2025) de la Facultad de Farmacia, Universidad Hamdard, Karachi, Pakistán';

  @override
  String get copyright => '© 2026 TheMarkX';

  @override
  String stepNumber(int number) {
    return 'PASO $number';
  }

  @override
  String get combine => 'COMBINAR';

  @override
  String get intermediateProductSuccess =>
      'Producto intermedio elaborado correctamente';

  @override
  String get formulaComplete => '¡FÓRMULA COMPLETADA!';

  @override
  String youMadeProduct(String product) {
    return '¡HAS PREPARADO $product!';
  }

  @override
  String get allStepsCompleted =>
      'Todos los pasos de la formulación se han completado correctamente.';

  @override
  String get backToHome => 'VOLVER AL INICIO';

  @override
  String processOverviewTitle(String product) {
    return 'PROCESO DE $product';
  }

  @override
  String version(String version) {
    return 'Versión $version';
  }

  @override
  String get glossaryMeaning => 'Significado';

  @override
  String get glossaryExample => 'Ejemplo';

  @override
  String get searchGlossary => 'Buscar en el glosario...';

  @override
  String get clearSearch => 'Borrar búsqueda';

  @override
  String get noTermsFound => 'No se encontraron términos';

  @override
  String glossaryTermCount(int count) {
    return '$count TÉRMINOS';
  }

  @override
  String get formulationQuantities => 'Cantidades de la formulación';

  @override
  String get noFormulationData => 'No hay datos de formulación disponibles.';

  @override
  String get formulationQuantityNotice =>
      'Las cantidades se añadirán cuando estén disponibles los datos de formulación USP/BP.';

  @override
  String get quantityNotEntered => 'No introducida';

  @override
  String get choosePreferredLanguage => 'Elige tu idioma preferido.';

  @override
  String get sendFeedback => 'Abrir aplicación de correo';

  @override
  String get sendFeedbackDescription =>
      '¿Tienes una sugerencia, has encontrado un problema o has notado algo que podría mejorarse? Envíanos tus comentarios directamente desde tu aplicación de correo electrónico.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get contact => 'Contáctanos';

  @override
  String get theme => 'Tema';

  @override
  String get chooseTheme => 'Elige cómo quieres que se vea la aplicación.';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeSystemSubtitle => 'Seguir la configuración de tu dispositivo';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeDarkSubtitle => 'Usar siempre el modo oscuro';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeLightSubtitle => 'Usar siempre el modo claro';
}
