import 'package:flutter/material.dart';

import 'package:formula/models/reaction_step.dart';
import 'package:formula/models/step_learning_data.dart';

String _tr(Locale locale, String en, String es, String fr, String de) {
  switch (locale.languageCode) {
    case 'es':
      return es;
    case 'fr':
      return fr;
    case 'de':
      return de;
    default:
      return en;
  }
}

List<ReactionStep> toothpowderStepsFor(Locale locale) {
  String t(String en, String es, String fr, String de) =>
      _tr(locale, en, es, fr, de);

  IngredientData ingredient({
    required String nameEn,
    required String nameEs,
    required String nameFr,
    required String nameDe,
    required IconData icon,
    required String model,
    required String descEn,
    required String descEs,
    required String descFr,
    required String descDe,
  }) {
    return IngredientData(
      name: t(nameEn, nameEs, nameFr, nameDe),
      icon: icon,
      modelPath: 'assets/models/$model.glb',
      description: t(descEn, descEs, descFr, descDe),
    );
  }

  LearningPoint point({
    required IconData icon,
    required String titleEn,
    required String titleEs,
    required String titleFr,
    required String titleDe,
    required String descEn,
    required String descEs,
    required String descFr,
    required String descDe,
  }) {
    return LearningPoint(
      icon: icon,
      title: t(titleEn, titleEs, titleFr, titleDe),
      description: t(descEn, descEs, descFr, descDe),
    );
  }

  final calciumCarbonate = ingredient(
    nameEn: 'CALCIUM CARBONATE / ABRASIVE',
    nameEs: 'CARBONATO DE CALCIO / ABRASIVO',
    nameFr: 'CARBONATE DE CALCIUM / ABRASIF',
    nameDe: 'CALCIUMCARBONAT / ABRASIV',
    icon: Icons.grain_outlined,
    model: 'calcium_carbonate',
    descEn:
        'Calcium carbonate is a common abrasive material used in toothpowder. '
        'It contributes to mechanical cleaning during brushing and forms part '
        'of the bulk powder.',
    descEs:
        'El carbonato de calcio es un material abrasivo común utilizado en '
        'el polvo dental. Contribuye a la limpieza mecánica durante el '
        'cepillado y forma parte de la masa del polvo.',
    descFr:
        'Le carbonate de calcium est un matériau abrasif couramment utilisé '
        'dans la poudre dentaire. Il contribue au nettoyage mécanique lors '
        'du brossage et constitue une partie de la masse de la poudre.',
    descDe:
        'Calciumcarbonat ist ein häufig verwendetes abrasives Material in '
        'Zahnpulver. Es trägt zur mechanischen Reinigung beim Zähneputzen '
        'bei und bildet einen Teil der Pulvermasse.',
  );

  final sodiumBicarbonate = ingredient(
    nameEn: 'SODIUM BICARBONATE',
    nameEs: 'BICARBONATO DE SODIO',
    nameFr: 'BICARBONATE DE SODIUM',
    nameDe: 'NATRIUMHYDROGENCARBONAT',
    icon: Icons.science_outlined,
    model: 'sodium_bicarbonate',
    descEn:
        'Sodium bicarbonate is a powdered ingredient that can contribute '
        'to cleaning and buffering properties in a toothpowder formulation.',
    descEs:
        'El bicarbonato de sodio es un ingrediente en polvo que puede '
        'contribuir a las propiedades de limpieza y amortiguación de la '
        'formulación del polvo dental.',
    descFr:
        'Le bicarbonate de sodium est un ingrédient en poudre qui peut '
        'contribuer aux propriétés nettoyantes et tampons de la formulation '
        'de la poudre dentaire.',
    descDe:
        'Natriumhydrogencarbonat ist ein pulverförmiger Bestandteil, der '
        'zu den Reinigungs- und Pufferungseigenschaften des Zahnpulvers '
        'beitragen kann.',
  );

  final otherPowderedExcipients = ingredient(
    nameEn: 'OTHER POWDERED EXCIPIENTS',
    nameEs: 'OTROS EXCIPIENTES EN POLVO',
    nameFr: 'AUTRES EXCIPIENTS EN POUDRE',
    nameDe: 'ANDERE PULVERFÖRMIGE HILFSSTOFFE',
    icon: Icons.scatter_plot_outlined,
    model: 'other_powdered_excipients',
    descEn:
        'Other powdered excipients may be included to provide desired '
        'formulation, processing, flow or sensory properties.',
    descEs:
        'Se pueden incluir otros excipientes en polvo para proporcionar '
        'las propiedades deseadas de formulación, procesamiento, flujo '
        'o características sensoriales.',
    descFr:
        'D’autres excipients en poudre peuvent être inclus afin de fournir '
        'les propriétés souhaitées de formulation, de traitement, '
        'd’écoulement ou les propriétés sensorielles.',
    descDe:
        'Andere pulverförmige Hilfsstoffe können enthalten sein, um die '
        'gewünschten Formulierungs-, Verarbeitungs-, Fließ- oder '
        'sensorischen Eigenschaften zu erzielen.',
  );

  final uniformPowderBase = ingredient(
    nameEn: 'UNIFORMLY SIZED POWDER BASE',
    nameEs: 'BASE DE POLVO DE TAMAÑO UNIFORME',
    nameFr: 'BASE DE POUDRE À GRANULOMÉTRIE UNIFORME',
    nameDe: 'PULVERBASIS MIT EINHEITLICHER PARTIKELGRÖSSE',
    icon: Icons.science_outlined,
    model: 'uniform_powder_base',
    descEn:
        'The uniformly sized powder base is the prepared mixture of '
        'powdered ingredients after sieving and particle-size conditioning.',
    descEs:
        'La base de polvo de tamaño uniforme es la mezcla preparada de '
        'ingredientes en polvo después del tamizado y del acondicionamiento '
        'del tamaño de partícula.',
    descFr:
        'La base de poudre à granulométrie uniforme est le mélange préparé '
        'des ingrédients en poudre après tamisage et conditionnement de la '
        'taille des particules.',
    descDe:
        'Die Pulvergrundlage mit einheitlicher Partikelgröße ist die '
        'vorbereitete Mischung der pulverförmigen Bestandteile nach dem '
        'Sieben und der Einstellung der Partikelgröße.',
  );

  final sodiumFluoride = ingredient(
    nameEn: 'SODIUM FLUORIDE (IF USED)',
    nameEs: 'FLUORURO DE SODIO (SI SE UTILIZA)',
    nameFr: 'FLUORURE DE SODIUM (SI UTILISÉ)',
    nameDe: 'NATRIUMFLUORID (FALLS VERWENDET)',
    icon: Icons.science_outlined,
    model: 'sodium_fluoride',
    descEn:
        'Sodium fluoride may be used as the fluoride source in the '
        'toothpowder formulation. It is prepared as a finely sifted powder '
        'before incorporation.',
    descEs:
        'El fluoruro de sodio puede utilizarse como fuente de fluoruro en '
        'la formulación del polvo dental. Se prepara como un polvo finamente '
        'tamizado antes de su incorporación.',
    descFr:
        'Le fluorure de sodium peut être utilisé comme source de fluorure '
        'dans la formulation de la poudre dentaire. Il est préparé sous '
        'forme de poudre finement tamisée avant son incorporation.',
    descDe:
        'Natriumfluorid kann als Fluoridquelle in der Zahnpulverformulierung '
        'verwendet werden. Vor der Einarbeitung wird es als fein gesiebtes '
        'Pulver vorbereitet.',
  );

  final finelySiftedActive = ingredient(
    nameEn: 'FINELY SIFTED ACTIVE',
    nameEs: 'PRINCIPIO ACTIVO FINAMENTE TAMIZADO',
    nameFr: 'PRINCIPE ACTIF FINEMENT TAMISÉ',
    nameDe: 'FEIN GESIEBTES WIRKSTOFFPULVER',
    icon: Icons.science_outlined,
    model: 'finely_sifted_active',
    descEn:
        'The finely sifted active is the prepared sodium fluoride powder '
        'after sieving, ready for controlled incorporation into the bulk powder.',
    descEs:
        'El principio activo finamente tamizado es el polvo de fluoruro de '
        'sodio preparado después del tamizado, listo para su incorporación '
        'controlada al polvo base.',
    descFr:
        'Le principe actif finement tamisé est la poudre de fluorure de '
        'sodium préparée après tamisage, prête à être incorporée de manière '
        'contrôlée dans la poudre de base.',
    descDe:
        'Das fein gesiebte Wirkstoffpulver ist das vorbereitete '
        'Natriumfluoridpulver nach dem Sieben und bereit für die kontrollierte '
        'Einarbeitung in die Pulvergrundlage.',
  );

  final finelySiftedSodiumFluoride = ingredient(
    nameEn: 'FINELY SIFTED SODIUM FLUORIDE',
    nameEs: 'FLUORURO DE SODIO FINAMENTE TAMIZADO',
    nameFr: 'FLUORURE DE SODIUM FINEMENT TAMISÉ',
    nameDe: 'FEIN GESIEBTES NATRIUMFLUORID',
    icon: Icons.science_outlined,
    model: 'sodium_fluoride',
    descEn:
        'Finely sifted sodium fluoride is the active ingredient prepared '
        'for gradual and uniform distribution throughout the powder base.',
    descEs:
        'El fluoruro de sodio finamente tamizado es el principio activo '
        'preparado para una distribución gradual y uniforme en toda la base '
        'de polvo.',
    descFr:
        'Le fluorure de sodium finement tamisé est le principe actif préparé '
        'pour une distribution progressive et uniforme dans toute la base '
        'de poudre.',
    descDe:
        'Fein gesiebtes Natriumfluorid ist der Wirkstoff, der für eine '
        'schrittweise und gleichmäßige Verteilung in der Pulvergrundlage '
        'vorbereitet wurde.',
  );

  final smallPowderPortion = ingredient(
    nameEn: 'SMALL PORTION OF UNIFORMLY SIZED POWDER BASE',
    nameEs: 'PEQUEÑA PORCIÓN DE BASE DE POLVO DE TAMAÑO UNIFORME',
    nameFr: 'PETITE PORTION DE BASE DE POUDRE À GRANULOMÉTRIE UNIFORME',
    nameDe: 'KLEINE PORTION DER PULVERBASIS MIT EINHEITLICHER PARTIKELGRÖSSE',
    icon: Icons.grain_outlined,
    model: 'uniform_powder_base',
    descEn:
        'A small portion of the prepared powder base is initially combined '
        'with the active ingredient to begin geometric dilution.',
    descEs:
        'Una pequeña porción de la base de polvo preparada se combina '
        'inicialmente con el principio activo para comenzar la dilución geométrica.',
    descFr:
        'Une petite portion de la base de poudre préparée est d’abord '
        'combinée au principe actif pour commencer la dilution géométrique.',
    descDe:
        'Eine kleine Portion der vorbereiteten Pulvergrundlage wird zunächst '
        'mit dem Wirkstoff kombiniert, um die geometrische Verdünnung zu beginnen.',
  );

  final uniformlyDistributedActiveBase = ingredient(
    nameEn: 'UNIFORMLY DISTRIBUTED ACTIVE BASE',
    nameEs: 'BASE ACTIVA UNIFORMEMENTE DISTRIBUIDA',
    nameFr: 'BASE ACTIVE UNIFORMÉMENT DISTRIBUÉE',
    nameDe: 'GLEICHMÄSSIG VERTEILTE WIRKSTOFFBASIS',
    icon: Icons.science_outlined,
    model: 'uniformly_distributed_active_base',
    descEn:
        'The uniformly distributed active base is produced by gradually '
        'incorporating increasing portions of powder base with the active '
        'ingredient using geometric dilution.',
    descEs:
        'La base activa uniformemente distribuida se produce incorporando '
        'gradualmente porciones crecientes de la base de polvo con el '
        'principio activo mediante dilución geométrica.',
    descFr:
        'La base active uniformément distribuée est obtenue en incorporant '
        'progressivement des quantités croissantes de base de poudre au '
        'principe actif par dilution géométrique.',
    descDe:
        'Die gleichmäßig verteilte Wirkstoffbasis wird durch schrittweises '
        'Einarbeiten zunehmender Mengen der Pulvergrundlage mit dem Wirkstoff '
        'mittels geometrischer Verdünnung hergestellt.',
  );

  final sodiumSaccharin = ingredient(
    nameEn: 'SODIUM SACCHARIN',
    nameEs: 'SACARINA SÓDICA',
    nameFr: 'SACCHARINATE DE SODIUM',
    nameDe: 'NATRIUMSACCHARIN',
    icon: Icons.grain_outlined,
    model: 'saccharin_sodium',
    descEn:
        'Sodium saccharin is a high-intensity sweetener used to improve '
        'the taste and sensory acceptability of the toothpowder.',
    descEs:
        'La sacarina sódica es un edulcorante de alta intensidad utilizado '
        'para mejorar el sabor y la aceptabilidad sensorial del polvo dental.',
    descFr:
        'Le saccharinate de sodium est un édulcorant intense utilisé pour '
        'améliorer le goût et l’acceptabilité sensorielle de la poudre dentaire.',
    descDe:
        'Natriumsaccharin ist ein intensiv süßender Stoff, der zur Verbesserung '
        'des Geschmacks und der sensorischen Akzeptanz des Zahnpulvers verwendet wird.',
  );

  final sweetenedPowderBase = ingredient(
    nameEn: 'SWEETENED POWDER BASE',
    nameEs: 'BASE DE POLVO EDULCORADA',
    nameFr: 'BASE DE POUDRE ÉDULCORÉE',
    nameDe: 'GESÜSSTE PULVERBASIS',
    icon: Icons.science_outlined,
    model: 'sweetened_powder_base',
    descEn:
        'The sweetened powder base is produced after sodium saccharin '
        'has been uniformly incorporated into the active powder base.',
    descEs:
        'La base de polvo edulcorada se produce después de incorporar '
        'uniformemente la sacarina sódica a la base de polvo activa.',
    descFr:
        'La base de poudre édulcorée est obtenue après incorporation '
        'uniforme du saccharinate de sodium dans la base de poudre active.',
    descDe:
        'Die gesüßte Pulvergrundlage entsteht, nachdem Natriumsaccharin '
        'gleichmäßig in die Wirkstoff-Pulvergrundlage eingearbeitet wurde.',
  );

  final peppermintFlavour = ingredient(
    nameEn: 'PEPPERMINT FLAVOUR / MENTHOL',
    nameEs: 'SABOR DE MENTA / MENTOL',
    nameFr: 'ARÔME DE MENTHE POIVRÉE / MENTHOL',
    nameDe: 'PFEFFERMINZAROMA / MENTHOL',
    icon: Icons.local_florist_outlined,
    model: 'peppermint_flavour',
    descEn:
        'Peppermint flavour and/or menthol provide the characteristic '
        'flavour and aroma of the toothpowder and may contribute a cooling '
        'sensory effect.',
    descEs:
        'El sabor de menta y/o el mentol proporcionan el sabor y aroma '
        'característicos del polvo dental y pueden aportar una sensación '
        'refrescante.',
    descFr:
        'L’arôme de menthe poivrée et/ou le menthol apportent le goût et '
        'l’arôme caractéristiques de la poudre dentaire et peuvent produire '
        'une sensation rafraîchissante.',
    descDe:
        'Pfefferminzaroma und/oder Menthol verleihen dem Zahnpulver seinen '
        'charakteristischen Geschmack und Duft und können ein kühlendes '
        'Mundgefühl vermitteln.',
  );

  final flavouredToothpowder = ingredient(
    nameEn: 'FLAVOURED TOOTHPOWDER',
    nameEs: 'POLVO DENTAL SABORIZADO',
    nameFr: 'POUDRE DENTAIRE AROMATISÉE',
    nameDe: 'AROMATISIERTES ZAHNPULVER',
    icon: Icons.science_outlined,
    model: 'flavoured_toothpowder',
    descEn:
        'The flavoured toothpowder is produced after peppermint flavour '
        'and/or menthol are incorporated into the sweetened powder base.',
    descEs:
        'El polvo dental saborizado se produce después de incorporar '
        'el sabor de menta y/o mentol a la base de polvo edulcorada.',
    descFr:
        'La poudre dentaire aromatisée est obtenue après incorporation '
        'de l’arôme de menthe poivrée et/ou du menthol dans la base de poudre édulcorée.',
    descDe:
        'Das aromatisierte Zahnpulver entsteht nach der Einarbeitung von '
        'Pfefferminzaroma und/oder Menthol in die gesüßte Pulvergrundlage.',
  );

  final remainingAbrasive = ingredient(
    nameEn:
        'REMAINING CALCIUM CARBONATE / DICALCIUM PHOSPHATE / OTHER ABRASIVE',
    nameEs: 'CARBONATO DE CALCIO / FOSFATO DICÁLCICO / OTRO ABRASIVO RESTANTE',
    nameFr:
        'CARBONATE DE CALCIUM / PHOSPHATE DICALCIQUE / AUTRE ABRASIF RESTANT',
    nameDe:
        'RESTLICHES CALCIUMCARBONAT / DICALCIUMPHOSPHAT / ANDERER ABRASIVSTOFF',
    icon: Icons.grain_outlined,
    model: 'remaining_abrasive_material',
    descEn:
        'The remaining bulk or abrasive material provides the additional '
        'powder mass required to complete the toothpowder formulation.',
    descEs:
        'El material abrasivo o de carga restante proporciona la masa '
        'adicional de polvo necesaria para completar la formulación.',
    descFr:
        'Le matériau de charge ou abrasif restant fournit la masse '
        'supplémentaire de poudre nécessaire pour compléter la formulation.',
    descDe:
        'Das verbleibende Füll- oder Abrasivmaterial liefert die zusätzliche '
        'Pulvermasse, die zur Vervollständigung der Zahnpulverformulierung erforderlich ist.',
  );

  final homogeneousToothpowder = ingredient(
    nameEn: 'HOMOGENEOUS TOOTHPOWDER',
    nameEs: 'POLVO DENTAL HOMOGÉNEO',
    nameFr: 'POUDRE DENTAIRE HOMOGÈNE',
    nameDe: 'HOMOGENES ZAHNPULVER',
    icon: Icons.science_outlined,
    model: 'homogeneous_toothpowder',
    descEn:
        'The homogeneous toothpowder is the completed powder blend after '
        'the remaining bulk and abrasive material has been incorporated uniformly.',
    descEs:
        'El polvo dental homogéneo es la mezcla de polvo completada después '
        'de incorporar uniformemente el material abrasivo y de carga restante.',
    descFr:
        'La poudre dentaire homogène est le mélange final obtenu après '
        'incorporation uniforme du matériau de charge et abrasif restant.',
    descDe:
        'Das homogene Zahnpulver ist die vollständige Pulvermischung, nachdem '
        'das verbleibende Füll- und Abrasivmaterial gleichmäßig eingearbeitet wurde.',
  );

  final finishedToothpowder = ingredient(
    nameEn: 'FINISHED TOOTHPOWDER',
    nameEs: 'POLVO DENTAL TERMINADO',
    nameFr: 'POUDRE DENTAIRE FINIE',
    nameDe: 'FERTIGES ZAHNPULVER',
    icon: Icons.science_outlined,
    model: 'finished_toothpowder',
    descEn:
        'The finished toothpowder is the powder obtained after final '
        'sieving to improve particle uniformity and remove agglomerates.',
    descEs:
        'El polvo dental terminado es el polvo obtenido después del '
        'tamizado final para mejorar la uniformidad de las partículas '
        'y eliminar aglomerados.',
    descFr:
        'La poudre dentaire finie est obtenue après le tamisage final, '
        'qui améliore l’uniformité des particules et élimine les agglomérats.',
    descDe:
        'Das fertige Zahnpulver wird nach dem abschließenden Sieben erhalten, '
        'wodurch die Partikelgleichmäßigkeit verbessert und Agglomerate entfernt werden.',
  );

  final toothpowderContainer = ingredient(
    nameEn: 'DRY, MOISTURE-RESISTANT CONTAINER',
    nameEs: 'ENVASE SECO Y RESISTENTE A LA HUMEDAD',
    nameFr: 'RÉCIPIENT SEC ET RÉSISTANT À L’HUMIDITÉ',
    nameDe: 'TROCKENER, FEUCHTIGKEITSBESTÄNDIGER BEHÄLTER',
    icon: Icons.inventory_2_outlined,
    model: 'toothpowder_container',
    descEn:
        'A dry, moisture-resistant and well-closed container helps '
        'protect the toothpowder from moisture and contamination during storage.',
    descEs:
        'Un envase seco, resistente a la humedad y bien cerrado ayuda a '
        'proteger el polvo dental de la humedad y la contaminación durante el almacenamiento.',
    descFr:
        'Un récipient sec, résistant à l’humidité et bien fermé aide à '
        'protéger la poudre dentaire contre l’humidité et la contamination pendant le stockage.',
    descDe:
        'Ein trockener, feuchtigkeitsbeständiger und gut verschlossener '
        'Behälter schützt das Zahnpulver während der Lagerung vor Feuchtigkeit und Verunreinigung.',
  );

  final finalToothpowder = ingredient(
    nameEn: 'FINAL TOOTHPOWDER',
    nameEs: 'POLVO DENTAL FINAL',
    nameFr: 'POUDRE DENTAIRE FINALE',
    nameDe: 'FERTIGES ZAHNPULVER',
    icon: Icons.inventory_2_outlined,
    model: 'final_toothpowder',
    descEn:
        'The final toothpowder is the completed formulation contained '
        'in suitable protective packaging and ready for storage.',
    descEs:
        'El polvo dental final es la formulación completada contenida '
        'en un envase protector adecuado y lista para su almacenamiento.',
    descFr:
        'La poudre dentaire finale est la formulation terminée contenue '
        'dans un emballage protecteur approprié et prête pour le stockage.',
    descDe:
        'Das fertige Zahnpulver ist die abgeschlossene Formulierung in einer '
        'geeigneten Schutzverpackung und bereit für die Lagerung.',
  );

  final toothpowderStep8 = ReactionStep(
    stepNumber: 8,
    heading: t('PACKAGING', 'ENVASADO', 'CONDITIONNEMENT', 'VERPACKUNG'),
    reactants: [finishedToothpowder, toothpowderContainer],
    product: finalToothpowder,
    learningData: StepLearningData(
      title: t(
        'PACKAGING THE FINISHED POWDER',
        'ENVASADO DEL POLVO TERMINADO',
        'CONDITIONNEMENT DE LA POUDRE FINIE',
        'VERPACKUNG DES FERTIGEN PULVERS',
      ),
      animationType: StepAnimationType.adjust,
      description: t(
        'The finished toothpowder is filled into a dry, moisture-resistant '
            'and well-closed container. Appropriate packaging helps protect '
            'the powder from moisture and contamination during storage.',
        'El polvo dental terminado se introduce en un envase seco, '
            'resistente a la humedad y bien cerrado. Un envase adecuado ayuda '
            'a proteger el polvo de la humedad y la contaminación durante el almacenamiento.',
        'La poudre dentaire finie est placée dans un récipient sec, '
            'résistant à l’humidité et bien fermé. Un emballage approprié aide '
            'à protéger la poudre contre l’humidité et la contamination pendant le stockage.',
        'Das fertige Zahnpulver wird in einen trockenen, '
            'feuchtigkeitsbeständigen und gut verschlossenen Behälter gefüllt. '
            'Eine geeignete Verpackung schützt das Pulver während der Lagerung '
            'vor Feuchtigkeit und Verunreinigung.',
      ),
      learningPoints: [
        point(
          icon: Icons.inventory_2_outlined,
          titleEn: 'FILLING',
          titleEs: 'LLENADO',
          titleFr: 'REMPLISSAGE',
          titleDe: 'ABFÜLLEN',
          descEn:
              'The finished powder is transferred into its final container.',
          descEs: 'El polvo terminado se transfiere a su envase final.',
          descFr: 'La poudre finie est transférée dans son récipient final.',
          descDe: 'Das fertige Pulver wird in seinen endgültigen Behälter überführt.',
        ),
        point(
          icon: Icons.water_drop_outlined,
          titleEn: 'MOISTURE PROTECTION',
          titleEs: 'PROTECCIÓN CONTRA LA HUMEDAD',
          titleFr: 'PROTECTION CONTRE L’HUMIDITÉ',
          titleDe: 'FEUCHTIGKEITSSCHUTZ',
          descEn:
              'The container should protect the powder from moisture exposure.',
          descEs:
              'El envase debe proteger el polvo de la exposición a la humedad.',
          descFr: 'Le récipient doit protéger la poudre contre l’exposition à l’humidité.',
          descDe: 'Der Behälter sollte das Pulver vor Feuchtigkeit schützen.',
        ),
        point(
          icon: Icons.lock_outline,
          titleEn: 'WELL CLOSED',
          titleEs: 'BIEN CERRADO',
          titleFr: 'BIEN FERMÉ',
          titleDe: 'GUT VERSCHLOSSEN',
          descEn: 'The container should remain properly closed during storage.',
          descEs: 'El envase debe permanecer correctamente cerrado durante el almacenamiento.',
          descFr: 'Le récipient doit rester correctement fermé pendant le stockage.',
          descDe: 'Der Behälter sollte während der Lagerung ordnungsgemäß verschlossen bleiben.',
        ),
      ],
    ),
    nextStep: null,
  );

  final toothpowderStep7 = ReactionStep(
    stepNumber: 7,
    heading: t(
      'FINAL SIEVING',
      'TAMIZADO FINAL',
      'TAMISAGE FINAL',
      'ABSCHLIESSENDES SIEBEN',
    ),
    reactants: [homogeneousToothpowder],
    product: finishedToothpowder,
    learningData: StepLearningData(
      title: t(
        'FINAL POWDER CONDITIONING',
        'ACONDICIONAMIENTO FINAL DEL POLVO',
        'CONDITIONNEMENT FINAL DE LA POUDRE',
        'ABSCHLIESSENDE PULVERKONDITIONIERUNG',
      ),
      animationType: StepAnimationType.sieve,
      description: t(
        'The completed powder blend is passed through an appropriate '
            'sieve to help break up agglomerates and obtain a more uniform '
            'particle distribution before packaging.',
        'La mezcla de polvo completada se pasa por un tamiz adecuado para '
            'ayudar a romper los aglomerados y obtener una distribución de '
            'partículas más uniforme antes del envasado.',
        'Le mélange de poudre terminé est passé à travers un tamis approprié '
            'afin de réduire les agglomérats et d’obtenir une distribution plus '
            'uniforme des particules avant le conditionnement.',
        'Die fertige Pulvermischung wird durch ein geeignetes Sieb gegeben, '
            'um Agglomerate aufzubrechen und vor der Verpackung eine gleichmäßigere '
            'Partikelverteilung zu erhalten.',
      ),
      learningPoints: [
        point(
          icon: Icons.filter_alt_outlined,
          titleEn: 'FINAL SIEVING',
          titleEs: 'TAMIZADO FINAL',
          titleFr: 'TAMISAGE FINAL',
          titleDe: 'ABSCHLIESSENDES SIEBEN',
          descEn:
              'The completed powder is passed through an appropriate sieve.',
          descEs: 'El polvo terminado se pasa por un tamiz adecuado.',
          descFr: 'La poudre terminée est passée à travers un tamis approprié.',
          descDe: 'Das fertige Pulver wird durch ein geeignetes Sieb gegeben.',
        ),
        point(
          icon: Icons.broken_image_outlined,
          titleEn: 'BREAKING AGGLOMERATES',
          titleEs: 'ROMPER AGLOMERADOS',
          titleFr: 'RÉDUCTION DES AGGLOMÉRATS',
          titleDe: 'AGGLOMERATE AUFBRECHEN',
          descEn:
              'Sieve processing helps break up unwanted powder agglomerates.',
          descEs: 'El tamizado ayuda a romper los aglomerados de polvo no deseados.',
          descFr: 'Le tamisage aide à réduire les agglomérats indésirables de poudre.',
          descDe: 'Das Sieben hilft dabei, unerwünschte Pulveragglomerate aufzubrechen.',
        ),
        point(
          icon: Icons.grain_outlined,
          titleEn: 'UNIFORM PARTICLES',
          titleEs: 'PARTÍCULAS UNIFORMES',
          titleFr: 'PARTICULES UNIFORMES',
          titleDe: 'EINHEITLICHE PARTIKEL',
          descEn: 'The final powder should have a consistent particle distribution.',
          descEs: 'El polvo final debe presentar una distribución uniforme de partículas.',
          descFr: 'La poudre finale doit présenter une distribution uniforme des particules.',
          descDe: 'Das fertige Pulver sollte eine gleichmäßige Partikelverteilung aufweisen.',
        ),
      ],
    ),
    nextStep: toothpowderStep8,
  );

  final toothpowderStep6 = ReactionStep(
    stepNumber: 6,
    heading: t(
      'ADD REMAINING BULK / ABRASIVE MATERIAL',
      'AÑADIR EL MATERIAL DE CARGA / ABRASIVO RESTANTE',
      'AJOUTER LE MATÉRIAU DE CHARGE / ABRASIF RESTANT',
      'RESTLICHES FÜLL- / ABRASIVMATERIAL HINZUFÜGEN',
    ),
    reactants: [remainingAbrasive, flavouredToothpowder],
    product: homogeneousToothpowder,
    learningData: StepLearningData(
      title: t(
        'COMPLETING THE POWDER BLEND',
        'COMPLETAR LA MEZCLA DE POLVO',
        'COMPLÉTER LE MÉLANGE DE POUDRE',
        'VERVOLLSTÄNDIGEN DER PULVERMISCHUNG',
      ),
      animationType: StepAnimationType.mix,
      description: t(
        'The remaining bulk and abrasive material is incorporated into '
            'the flavoured powder using geometric dilution until the mixture '
            'is sufficiently homogeneous.',
        'El material de carga y abrasivo restante se incorpora al polvo '
            'saborizado mediante dilución geométrica hasta que la mezcla sea '
            'suficientemente homogénea.',
        'Le matériau de charge et abrasif restant est incorporé à la poudre '
            'aromatisée par dilution géométrique jusqu’à obtenir un mélange '
            'suffisamment homogène.',
        'Das verbleibende Füll- und Abrasivmaterial wird durch geometrische '
            'Verdünnung in das aromatisierte Pulver eingearbeitet, bis die '
            'Mischung ausreichend homogen ist.',
      ),
      learningPoints: [
        point(
          icon: Icons.grain_outlined,
          titleEn: 'BULK MATERIAL',
          titleEs: 'MATERIAL DE CARGA',
          titleFr: 'MATÉRIAU DE CHARGE',
          titleDe: 'FÜLLMATERIAL',
          descEn: 'Remaining powdered abrasive or bulk material is incorporated into the blend.',
          descEs: 'El material abrasivo o de carga restante se incorpora a la mezcla.',
          descFr: 'Le matériau abrasif ou de charge restant est incorporé au mélange.',
          descDe: 'Das verbleibende abrasive oder füllende Pulvermaterial wird in die Mischung eingearbeitet.',
        ),
        point(
          icon: Icons.sync_alt_outlined,
          titleEn: 'GEOMETRIC DILUTION',
          titleEs: 'DILUCIÓN GEOMÉTRICA',
          titleFr: 'DILUTION GÉOMÉTRIQUE',
          titleDe: 'GEOMETRISCHE VERDÜNNUNG',
          descEn: 'Material is incorporated progressively to support uniform blending.',
          descEs: 'El material se incorpora progresivamente para favorecer una mezcla uniforme.',
          descFr: 'Le matériau est incorporé progressivement afin de favoriser un mélange uniforme.',
          descDe: 'Das Material wird schrittweise eingearbeitet, um eine gleichmäßige Mischung zu unterstützen.',
        ),
        point(
          icon: Icons.check_circle_outline,
          titleEn: 'HOMOGENEITY',
          titleEs: 'HOMOGENEIDAD',
          titleFr: 'HOMOGÉNÉITÉ',
          titleDe: 'HOMOGENITÄT',
          descEn: 'The completed blend should have a uniform composition throughout.',
          descEs: 'La mezcla terminada debe presentar una composición uniforme en toda su extensión.',
          descFr: 'Le mélange terminé doit présenter une composition uniforme dans toute sa masse.',
          descDe: 'Die fertige Mischung sollte überall eine gleichmäßige Zusammensetzung aufweisen.',
        ),
      ],
    ),
    nextStep: toothpowderStep7,
  );

  final toothpowderStep5 = ReactionStep(
    stepNumber: 5,
    heading: t(
      'ADD FLAVOUR',
      'AÑADIR SABOR',
      'AJOUTER L’ARÔME',
      'AROMA HINZUFÜGEN',
    ),
    reactants: [peppermintFlavour, sweetenedPowderBase],
    product: flavouredToothpowder,
    learningData: StepLearningData(
      title: t(
        'ADDING FLAVOUR',
        'AÑADIR EL SABOR',
        'AJOUTER L’ARÔME',
        'AROMA HINZUFÜGEN',
      ),
      animationType: StepAnimationType.flavour,
      description: t(
        'Peppermint flavour and/or menthol are incorporated into the '
            'powder base to provide the characteristic flavour and aroma '
            'of the toothpowder.',
        'El sabor de menta y/o el mentol se incorporan a la base de polvo '
            'para proporcionar el sabor y aroma característicos del polvo dental.',
        'L’arôme de menthe poivrée et/ou le menthol sont incorporés dans '
            'la base de poudre afin de fournir le goût et l’arôme caractéristiques '
            'de la poudre dentaire.',
        'Pfefferminzaroma und/oder Menthol werden in die Pulvergrundlage '
            'eingearbeitet, um den charakteristischen Geschmack und Duft '
            'des Zahnpulvers zu erzeugen.',
      ),
      learningPoints: [
        point(
          icon: Icons.local_florist_outlined,
          titleEn: 'FLAVOUR',
          titleEs: 'SABOR',
          titleFr: 'ARÔME',
          titleDe: 'AROMA',
          descEn:
              'Peppermint flavour provides the characteristic taste and aroma.',
          descEs:
              'El sabor de menta proporciona el sabor y aroma característicos.',
          descFr: 'L’arôme de menthe poivrée apporte le goût et l’arôme caractéristiques.',
          descDe: 'Pfefferminzaroma verleiht den charakteristischen Geschmack und Duft.',
        ),
        point(
          icon: Icons.air_outlined,
          titleEn: 'AROMA',
          titleEs: 'AROMA',
          titleFr: 'ARÔME',
          titleDe: 'DUFT',
          descEn: 'Menthol can contribute a characteristic cooling aroma and sensation.',
          descEs: 'El mentol puede aportar un aroma y una sensación refrescante característicos.',
          descFr: 'Le menthol peut apporter un arôme et une sensation rafraîchissante caractéristiques.',
          descDe: 'Menthol kann zu einem charakteristischen kühlenden Duft und Mundgefühl beitragen.',
        ),
        point(
          icon: Icons.merge_type,
          titleEn: 'INCORPORATION',
          titleEs: 'INCORPORACIÓN',
          titleFr: 'INCORPORATION',
          titleDe: 'EINARBEITUNG',
          descEn:
              'The flavour should be distributed throughout the powder base.',
          descEs: 'El sabor debe distribuirse uniformemente por toda la base de polvo.',
          descFr: 'L’arôme doit être réparti dans toute la base de poudre.',
          descDe: 'Das Aroma sollte gleichmäßig in der gesamten Pulvergrundlage verteilt werden.',
        ),
      ],
    ),
    nextStep: toothpowderStep6,
  );

  final toothpowderStep4 = ReactionStep(
    stepNumber: 4,
    heading: t(
      'ADD SWEETENER',
      'AÑADIR EDULCORANTE',
      'AJOUTER L’ÉDULCORANT',
      'SÜSSSTOFF HINZUFÜGEN',
    ),
    reactants: [sodiumSaccharin, uniformlyDistributedActiveBase],
    product: sweetenedPowderBase,
    learningData: StepLearningData(
      title: t(
        'ADDING THE SWEETENER',
        'AÑADIR EL EDULCORANTE',
        'AJOUTER L’ÉDULCORANT',
        'SÜSSSTOFF HINZUFÜGEN',
      ),
      animationType: StepAnimationType.incorporate,
      description: t(
        'Sodium saccharin is incorporated into the active powder base '
            'to provide sweetness and improve the sensory acceptability of '
            'the toothpowder.',
        'La sacarina sódica se incorpora a la base de polvo activa para '
            'proporcionar dulzor y mejorar la aceptabilidad sensorial del polvo dental.',
        'Le saccharinate de sodium est incorporé à la base de poudre active '
            'pour apporter de la douceur et améliorer l’acceptabilité sensorielle '
            'de la poudre dentaire.',
        'Natriumsaccharin wird in die Wirkstoff-Pulvergrundlage eingearbeitet, '
            'um Süße zu verleihen und die sensorische Akzeptanz des Zahnpulvers zu verbessern.',
      ),
      learningPoints: [
        point(
          icon: Icons.grain_outlined,
          titleEn: 'SWEETENER',
          titleEs: 'EDULCORANTE',
          titleFr: 'ÉDULCORANT',
          titleDe: 'SÜSSSTOFF',
          descEn: 'Sodium saccharin provides sweetness at a low concentration.',
          descEs: 'La sacarina sódica proporciona dulzor a baja concentración.',
          descFr: 'Le saccharinate de sodium apporte de la douceur à faible concentration.',
          descDe: 'Natriumsaccharin verleiht bereits in geringer Konzentration Süße.',
        ),
        point(
          icon: Icons.sentiment_satisfied_alt_outlined,
          titleEn: 'PALATABILITY',
          titleEs: 'PALATABILIDAD',
          titleFr: 'PALATABILITÉ',
          titleDe: 'GESCHMACKLICHE AKZEPTANZ',
          descEn: 'Sweetness can help improve the sensory characteristics of the powder.',
          descEs: 'El dulzor puede ayudar a mejorar las características sensoriales del polvo.',
          descFr: 'La douceur peut contribuer à améliorer les caractéristiques sensorielles de la poudre.',
          descDe: 'Süße kann dazu beitragen, die sensorischen Eigenschaften des Pulvers zu verbessern.',
        ),
        point(
          icon: Icons.balance_outlined,
          titleEn: 'UNIFORM MIXING',
          titleEs: 'MEZCLA UNIFORME',
          titleFr: 'MÉLANGE UNIFORME',
          titleDe: 'GLEICHMÄSSIGES MISCHEN',
          descEn: 'The sweetener should be distributed consistently throughout the powder.',
          descEs: 'El edulcorante debe distribuirse de manera uniforme por todo el polvo.',
          descFr: 'L’édulcorant doit être réparti uniformément dans toute la poudre.',
          descDe: 'Der Süßstoff sollte gleichmäßig im gesamten Pulver verteilt werden.',
        ),
      ],
    ),
    nextStep: toothpowderStep5,
  );

  final toothpowderStep3 = ReactionStep(
    stepNumber: 3,
    heading: t(
      'GEOMETRIC DILUTION',
      'DILUCIÓN GEOMÉTRICA',
      'DILUTION GÉOMÉTRIQUE',
      'GEOMETRISCHE VERDÜNNUNG',
    ),
    reactants: [finelySiftedSodiumFluoride, smallPowderPortion],
    product: uniformlyDistributedActiveBase,
    learningData: StepLearningData(
      title: t(
        'GEOMETRIC DILUTION',
        'DILUCIÓN GEOMÉTRICA',
        'DILUTION GÉOMÉTRIQUE',
        'GEOMETRISCHE VERDÜNNUNG',
      ),
      animationType: StepAnimationType.mix,
      description: t(
        'The active ingredient is first mixed thoroughly with a small '
            'portion of the powder base. Increasing portions of the powder '
            'base are then incorporated gradually. This geometric dilution '
            'approach helps distribute a small quantity of active ingredient '
            'throughout a larger powder mass.',
        'El principio activo se mezcla primero completamente con una pequeña '
            'porción de la base de polvo. Después se incorporan gradualmente '
            'porciones crecientes de la base. Este enfoque de dilución geométrica '
            'ayuda a distribuir una pequeña cantidad de principio activo en una '
            'masa de polvo mayor.',
        'Le principe actif est d’abord mélangé soigneusement avec une petite '
            'portion de la base de poudre. Des portions croissantes de la base '
            'sont ensuite incorporées progressivement. Cette approche par dilution '
            'géométrique aide à répartir une petite quantité de principe actif '
            'dans une masse de poudre plus importante.',
        'Der Wirkstoff wird zunächst gründlich mit einer kleinen Portion der '
            'Pulvergrundlage vermischt. Anschließend werden schrittweise größere '
            'Portionen der Pulvergrundlage eingearbeitet. Diese Methode der '
            'geometrischen Verdünnung unterstützt die Verteilung einer kleinen '
            'Wirkstoffmenge in einer größeren Pulvermasse.',
      ),
      learningPoints: [
        point(
          icon: Icons.add_circle_outline,
          titleEn: 'START SMALL',
          titleEs: 'EMPEZAR PEQUEÑO',
          titleFr: 'COMMENCER PETIT',
          titleDe: 'KLEIN BEGINNEN',
          descEn: 'The active ingredient is first combined with a small portion of the powder base.',
          descEs: 'El principio activo se combina primero con una pequeña porción de la base de polvo.',
          descFr: 'Le principe actif est d’abord combiné avec une petite portion de la base de poudre.',
          descDe: 'Der Wirkstoff wird zunächst mit einer kleinen Portion der Pulvergrundlage kombiniert.',
        ),
        point(
          icon: Icons.sync_alt_outlined,
          titleEn: 'GRADUAL ADDITION',
          titleEs: 'ADICIÓN GRADUAL',
          titleFr: 'AJOUT PROGRESSIF',
          titleDe: 'SCHRITTWEISE ZUGABE',
          descEn: 'Increasing portions of the powder base are incorporated progressively.',
          descEs: 'Se incorporan progresivamente porciones crecientes de la base de polvo.',
          descFr: 'Des portions croissantes de la base de poudre sont incorporées progressivement.',
          descDe: 'Zunehmende Portionen der Pulvergrundlage werden schrittweise eingearbeitet.',
        ),
        point(
          icon: Icons.balance_outlined,
          titleEn: 'UNIFORM DISTRIBUTION',
          titleEs: 'DISTRIBUCIÓN UNIFORME',
          titleFr: 'DISTRIBUTION UNIFORME',
          titleDe: 'GLEICHMÄSSIGE VERTEILUNG',
          descEn: 'Geometric dilution helps distribute the active ingredient throughout the powder.',
          descEs: 'La dilución geométrica ayuda a distribuir el principio activo por todo el polvo.',
          descFr: 'La dilution géométrique aide à répartir le principe actif dans toute la poudre.',
          descDe: 'Die geometrische Verdünnung unterstützt die gleichmäßige Verteilung des Wirkstoffs im Pulver.',
        ),
      ],
    ),
    nextStep: toothpowderStep4,
  );

  final toothpowderStep2 = ReactionStep(
    stepNumber: 2,
    heading: t(
      'PREPARE THE ACTIVE INGREDIENT BY SIEVING',
      'PREPARAR EL PRINCIPIO ACTIVO MEDIANTE TAMIZADO',
      'PRÉPARER LE PRINCIPE ACTIF PAR TAMISAGE',
      'WIRKSTOFF DURCH SIEBEN VORBEREITEN',
    ),
    reactants: [sodiumFluoride],
    product: finelySiftedActive,
    learningData: StepLearningData(
      title: t(
        'PREPARING THE ACTIVE',
        'PREPARAR EL PRINCIPIO ACTIVO',
        'PRÉPARER LE PRINCIPE ACTIF',
        'WIRKSTOFF VORBEREITEN',
      ),
      animationType: StepAnimationType.sieve,
      description: t(
        'When sodium fluoride is included in the formulation, it is '
            'prepared as a finely sifted powder before incorporation into '
            'the bulk powder. This supports more uniform distribution during mixing.',
        'Cuando se incluye fluoruro de sodio en la formulación, se prepara '
            'como un polvo finamente tamizado antes de incorporarlo al polvo base. '
            'Esto favorece una distribución más uniforme durante la mezcla.',
        'Lorsque le fluorure de sodium est inclus dans la formulation, il est '
            'préparé sous forme de poudre finement tamisée avant son incorporation '
            'dans la poudre de base. Cela favorise une distribution plus uniforme pendant le mélange.',
        'Wenn Natriumfluorid in der Formulierung enthalten ist, wird es vor '
            'der Einarbeitung in die Pulvergrundlage als fein gesiebtes Pulver '
            'vorbereitet. Dies unterstützt eine gleichmäßigere Verteilung beim Mischen.',
      ),
      learningPoints: [
        point(
          icon: Icons.science_outlined,
          titleEn: 'ACTIVE INGREDIENT',
          titleEs: 'PRINCIPIO ACTIVO',
          titleFr: 'PRINCIPE ACTIF',
          titleDe: 'WIRKSTOFF',
          descEn: 'Sodium fluoride may be used as the fluoride source in the formulation.',
          descEs: 'El fluoruro de sodio puede utilizarse como fuente de fluoruro en la formulación.',
          descFr: 'Le fluorure de sodium peut être utilisé comme source de fluorure dans la formulation.',
          descDe: 'Natriumfluorid kann als Fluoridquelle in der Formulierung verwendet werden.',
        ),
        point(
          icon: Icons.filter_alt_outlined,
          titleEn: 'FINE SIFTING',
          titleEs: 'TAMIZADO FINO',
          titleFr: 'TAMISAGE FIN',
          titleDe: 'FEINES SIEBEN',
          descEn: 'Sifting helps prepare the active ingredient for uniform incorporation.',
          descEs: 'El tamizado ayuda a preparar el principio activo para una incorporación uniforme.',
          descFr: 'Le tamisage aide à préparer le principe actif pour une incorporation uniforme.',
          descDe: 'Das Sieben bereitet den Wirkstoff für eine gleichmäßige Einarbeitung vor.',
        ),
        point(
          icon: Icons.balance_outlined,
          titleEn: 'DISTRIBUTION',
          titleEs: 'DISTRIBUCIÓN',
          titleFr: 'DISTRIBUTION',
          titleDe: 'VERTEILUNG',
          descEn: 'Fine preparation supports more consistent distribution throughout the powder.',
          descEs: 'La preparación fina favorece una distribución más uniforme en todo el polvo.',
          descFr: 'Une préparation fine favorise une distribution plus homogène dans toute la poudre.',
          descDe: 'Eine feine Vorbereitung unterstützt eine gleichmäßigere Verteilung im gesamten Pulver.',
        ),
      ],
    ),
    nextStep: toothpowderStep3,
  );

  final toothpowderStep1 = ReactionStep(
    stepNumber: 1,
    heading: t(
      'SIEVE / PREPARE POWDERED INGREDIENTS',
      'TAMIZAR / PREPARAR LOS INGREDIENTES EN POLVO',
      'TAMISER / PRÉPARER LES INGRÉDIENTS EN POUDRE',
      'PULVERFÖRMIGE BESTANDTEILE SIEBEN / VORBEREITEN',
    ),
    reactants: [calciumCarbonate, sodiumBicarbonate, otherPowderedExcipients],
    product: uniformPowderBase,
    learningData: StepLearningData(
      title: t(
        'PREPARING THE POWDER BASE',
        'PREPARAR LA BASE DE POLVO',
        'PRÉPARER LA BASE DE POUDRE',
        'PULVERGRUNDLAGE VORBEREITEN',
      ),
      animationType: StepAnimationType.sieve,
      description: t(
        'The powdered ingredients are passed through an appropriate '
            'sieve before blending. Sieving helps break up agglomerates and '
            'produces a more uniform particle distribution for subsequent mixing.',
        'Los ingredientes en polvo se pasan por un tamiz adecuado antes '
            'de mezclarlos. El tamizado ayuda a romper los aglomerados y '
            'produce una distribución de partículas más uniforme para la mezcla posterior.',
        'Les ingrédients en poudre sont passés à travers un tamis approprié '
            'avant le mélange. Le tamisage aide à réduire les agglomérats et '
            'produit une distribution plus uniforme des particules pour le mélange ultérieur.',
        'Die pulverförmigen Bestandteile werden vor dem Mischen durch ein '
            'geeignetes Sieb gegeben. Das Sieben hilft, Agglomerate aufzubrechen '
            'und eine gleichmäßigere Partikelverteilung für das anschließende Mischen zu erzeugen.',
      ),
      learningPoints: [
        point(
          icon: Icons.filter_alt_outlined,
          titleEn: 'SIEVING',
          titleEs: 'TAMIZADO',
          titleFr: 'TAMISAGE',
          titleDe: 'SIEBEN',
          descEn: 'Sieving helps remove oversized particles and break up powder agglomerates.',
          descEs: 'El tamizado ayuda a eliminar partículas demasiado grandes y romper los aglomerados del polvo.',
          descFr: 'Le tamisage aide à éliminer les particules trop grosses et à réduire les agglomérats de poudre.',
          descDe: 'Das Sieben hilft, übergroße Partikel zu entfernen und Pulveragglomerate aufzubrechen.',
        ),
        point(
          icon: Icons.grain_outlined,
          titleEn: 'PARTICLE UNIFORMITY',
          titleEs: 'UNIFORMIDAD DE PARTÍCULAS',
          titleFr: 'UNIFORMITÉ DES PARTICULES',
          titleDe: 'PARTIKELGLEICHMÄSSIGKEIT',
          descEn: 'A more uniform particle size supports consistent powder blending.',
          descEs: 'Un tamaño de partícula más uniforme favorece una mezcla consistente del polvo.',
          descFr: 'Une taille de particules plus uniforme favorise un mélange régulier de la poudre.',
          descDe: 'Eine gleichmäßigere Partikelgröße unterstützt ein gleichmäßiges Mischen des Pulvers.',
        ),
        point(
          icon: Icons.layers_outlined,
          titleEn: 'POWDER BASE',
          titleEs: 'BASE DE POLVO',
          titleFr: 'BASE DE POUDRE',
          titleDe: 'PULVERGRUNDLAGE',
          descEn: 'The prepared powders form the foundation for the remaining formulation steps.',
          descEs: 'Los polvos preparados forman la base de los pasos restantes de la formulación.',
          descFr: 'Les poudres préparées constituent la base des étapes restantes de la formulation.',
          descDe: 'Die vorbereiteten Pulver bilden die Grundlage für die weiteren Formulierungsschritte.',
        ),
      ],
    ),
    nextStep: toothpowderStep2,
  );

  return [
    toothpowderStep1,
    toothpowderStep2,
    toothpowderStep3,
    toothpowderStep4,
    toothpowderStep5,
    toothpowderStep6,
    toothpowderStep7,
    toothpowderStep8,
  ];
}

final List<ReactionStep> toothpowderSteps = toothpowderStepsFor(
  const Locale('en'),
);
