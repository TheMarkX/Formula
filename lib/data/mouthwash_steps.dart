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

List<ReactionStep> mouthwashStepsFor(Locale locale) {
  String t(String en, String es, String fr, String de) =>
      _tr(locale, en, es, fr, de);

  IngredientData ingredient(
    String name,
    IconData icon,
    String model,
    String en,
    String es,
    String fr,
    String de,
  ) {
    return IngredientData(
      name: name,
      icon: icon,
      modelPath: 'assets/models/$model.glb',
      description: t(en, es, fr, de),
    );
  }

  LearningPoint point(
    IconData icon,
    String titleEn,
    String titleEs,
    String titleFr,
    String titleDe,
    String en,
    String es,
    String fr,
    String de,
  ) {
    return LearningPoint(
      icon: icon,
      title: t(titleEn, titleEs, titleFr, titleDe),
      description: t(en, es, fr, de),
    );
  }

  final water = ingredient(
    t(
      'PURIFIED WATER',
      'AGUA PURIFICADA',
      'EAU PURIFIÉE',
      'GEREINIGTES WASSER',
    ),
    Icons.water_drop_outlined,
    'purified_water',
    'Purified water serves as the main aqueous vehicle of the mouthwash and provides the liquid medium for incorporating formulation ingredients.',
    'El agua purificada es el vehículo acuoso principal del enjuague bucal y proporciona el medio líquido para incorporar los ingredientes.',
    'L’eau purifiée constitue le principal véhicule aqueux du bain de bouche et fournit le milieu liquide nécessaire à l’incorporation des ingrédients.',
    'Gereinigtes Wasser ist das wichtigste wässrige Vehikel der Mundspülung und dient als flüssiges Medium zur Einarbeitung der Inhaltsstoffe.',
  );

  final preservative = ingredient(
    t(
      'SODIUM BENZOATE',
      'BENZOATO DE SODIO',
      'BENZOATE DE SODIUM',
      'NATRIUMBENZOAT',
    ),
    Icons.shield_outlined,
    'sodium_benzoate',
    'Sodium benzoate acts as a preservative to help protect the aqueous formulation against microbial growth during storage.',
    'El benzoato de sodio actúa como conservante y ayuda a proteger la formulación acuosa frente al crecimiento microbiano durante el almacenamiento.',
    'Le benzoate de sodium sert de conservateur et aide à protéger la formulation aqueuse contre la croissance microbienne pendant le stockage.',
    'Natriumbenzoat dient als Konservierungsmittel und schützt die wässrige Formulierung während der Lagerung vor mikrobiellem Wachstum.',
  );

  final aqueousBase = ingredient(
    t(
      'PRESERVED AQUEOUS BASE',
      'BASE ACUOSA CONSERVADA',
      'BASE AQUEUSE CONSERVÉE',
      'KONSERVIERTE WÄSSRIGE GRUNDLAGE',
    ),
    Icons.science_outlined,
    'preserved_aqueous_base',
    'The preserved aqueous base is the initial liquid phase of the mouthwash, containing purified water and the preservative system.',
    'La base acuosa conservada es la fase líquida inicial del enjuague bucal y contiene agua purificada y el sistema conservante.',
    'La base aqueuse conservée est la phase liquide initiale du bain de bouche. Elle contient de l’eau purifiée et le système conservateur.',
    'Die konservierte wässrige Grundlage ist die anfängliche Flüssigphase der Mundspülung und enthält gereinigtes Wasser sowie das Konservierungssystem.',
  );

  final citricAcid = ingredient(
    t('CITRIC ACID', 'ÁCIDO CÍTRICO', 'ACIDE CITRIQUE', 'ZITRONENSÄURE'),
    Icons.science_outlined,
    'citric_acid',
    'Citric acid is part of the buffer system and helps establish the intended acidic environment.',
    'El ácido cítrico forma parte del sistema tampón y ayuda a establecer el entorno ácido previsto.',
    'L’acide citrique fait partie du système tampon et contribue à établir le milieu acide souhaité.',
    'Zitronensäure ist Bestandteil des Puffersystems und trägt dazu bei, das gewünschte saure Milieu einzustellen.',
  );

  final sodiumCitrate = ingredient(
    t(
      'SODIUM CITRATE',
      'CITRATO DE SODIO',
      'CITRATE DE SODIUM',
      'NATRIUMCITRAT',
    ),
    Icons.grain_outlined,
    'sodium_citrate',
    'Sodium citrate works with citric acid as part of the buffer system, helping resist unwanted changes in pH.',
    'El citrato de sodio actúa junto con el ácido cítrico en el sistema tampón y ayuda a resistir cambios indeseados del pH.',
    'Le citrate de sodium agit avec l’acide citrique dans le système tampon et aide à limiter les variations indésirables du pH.',
    'Natriumcitrat wirkt zusammen mit Zitronensäure im Puffersystem und hilft, unerwünschte pH-Änderungen zu begrenzen.',
  );

  final bufferedBase = ingredient(
    t(
      'BUFFERED AQUEOUS BASE',
      'BASE ACUOSA TAMPONADA',
      'BASE AQUEUSE TAMPONNÉE',
      'GEPUFFERTE WÄSSRIGE GRUNDLAGE',
    ),
    Icons.science_outlined,
    'buffered_aqueous_base',
    'The buffered aqueous base contains the preserved aqueous phase together with the citric acid and sodium citrate buffer system.',
    'La base acuosa tamponada contiene la fase acuosa conservada y el sistema tampón de ácido cítrico y citrato de sodio.',
    'La base aqueuse tamponnée contient la phase aqueuse conservée ainsi que le système tampon à base d’acide citrique et de citrate de sodium.',
    'Die gepufferte wässrige Grundlage enthält die konservierte wässrige Phase sowie das Puffersystem aus Zitronensäure und Natriumcitrat.',
  );

  final glycerin = ingredient(
    t('GLYCERIN', 'GLICERINA', 'GLYCÉRINE', 'GLYCERIN'),
    Icons.water_drop_outlined,
    'glycerin',
    'Glycerin is a humectant that helps retain moisture and contributes to the physical and sensory properties of the mouthwash.',
    'La glicerina es un humectante que ayuda a retener la humedad y contribuye a las propiedades físicas y sensoriales del enjuague bucal.',
    'La glycérine est un humectant qui aide à retenir l’humidité et contribue aux propriétés physiques et sensorielles du bain de bouche.',
    'Glycerin ist ein Feuchthaltemittel, das Feuchtigkeit bindet und zu den physikalischen und sensorischen Eigenschaften der Mundspülung beiträgt.',
  );

  final sorbitol = ingredient(
    t('SORBITOL', 'SORBITOL', 'SORBITOL', 'SORBIT'),
    Icons.opacity_outlined,
    'sorbitol',
    'Sorbitol contributes humectant properties and sweetness to the mouthwash formulation.',
    'El sorbitol aporta propiedades humectantes y dulzor a la formulación.',
    'Le sorbitol apporte des propriétés humectantes et de la douceur à la formulation.',
    'Sorbit trägt feuchthaltende Eigenschaften und Süße zur Formulierung bei.',
  );

  final xylitol = ingredient(
    t('XYLITOL', 'XILITOL', 'XYLITOL', 'XYLIT'),
    Icons.grain_outlined,
    'xylitol',
    'Xylitol is a sweetening ingredient used to improve the sensory acceptability of the mouthwash.',
    'El xilitol es un edulcorante que mejora la aceptación sensorial del enjuague bucal.',
    'Le xylitol est un édulcorant qui améliore l’acceptabilité sensorielle du bain de bouche.',
    'Xylit ist ein Süßungsmittel, das die sensorische Akzeptanz der Mundspülung verbessern soll.',
  );

  final saccharin = ingredient(
    t(
      'SODIUM SACCHARIN',
      'SACARINA SÓDICA',
      'SACCHARINE SODIQUE',
      'NATRIUMSACCHARIN',
    ),
    Icons.grain_outlined,
    'saccharin_sodium',
    'Sodium saccharin is a high-intensity sweetener that provides sweetness at a relatively low concentration.',
    'La sacarina sódica es un edulcorante de alta intensidad que aporta dulzor en concentraciones relativamente bajas.',
    'La saccharine sodique est un édulcorant intense qui apporte de la douceur à faible concentration.',
    'Natriumsaccharin ist ein intensiver Süßstoff, der bereits in relativ geringer Konzentration Süße verleiht.',
  );

  final sweetenedBase = ingredient(
    t(
      'SWEETENED HUMECTANT BASE',
      'BASE HUMECTANTE EDULCORADA',
      'BASE HUMECTANTE ÉDULCORÉE',
      'GESÜSSTE FEUCHTHALTEMITTELGRUNDLAGE',
    ),
    Icons.science_outlined,
    'sweetened_humectant_base',
    'The sweetened humectant base contains the buffered aqueous phase with the humectants and sweeteners incorporated.',
    'La base humectante edulcorada contiene la fase acuosa tamponada con los humectantes y edulcorantes incorporados.',
    'La base humectante édulcorée contient la phase aqueuse tamponnée ainsi que les humectants et les édulcorants incorporés.',
    'Die gesüßte Feuchthaltemittelgrundlage enthält die gepufferte wässrige Phase mit den eingearbeiteten Feuchthaltemitteln und Süßungsmitteln.',
  );

  final peppermint = ingredient(
    t(
      'PEPPERMINT FLAVOUR',
      'AROMA DE MENTA',
      'ARÔME DE MENTHE POIVRÉE',
      'PFEFFERMINZAROMA',
    ),
    Icons.local_florist_outlined,
    'peppermint_flavour',
    'Peppermint flavour provides the characteristic flavour and aroma associated with the mouthwash.',
    'El aroma de menta aporta el sabor y el aroma característicos del enjuague bucal.',
    'L’arôme de menthe poivrée apporte la saveur et l’odeur caractéristiques du bain de bouche.',
    'Pfefferminzaroma verleiht der Mundspülung ihren charakteristischen Geschmack und Geruch.',
  );

  final menthol = ingredient(
    'MENTHOL',
    Icons.ac_unit_outlined,
    'menthol',
    'Menthol contributes a characteristic cooling sensation and supports the sensory profile of the flavour system.',
    'El mentol aporta una sensación refrescante característica y complementa el perfil sensorial del sistema aromático.',
    'Le menthol procure une sensation rafraîchissante caractéristique et complète le profil sensoriel du système aromatique.',
    'Menthol erzeugt ein charakteristisches Kühlgefühl und ergänzt das sensorische Profil des Aromasystems.',
  );

  final polysorbate = ingredient(
    'POLYSORBATE 20',
    Icons.bubble_chart_outlined,
    'polysorbate_20',
    'Polysorbate 20 is a nonionic surfactant that helps solubilize flavour components for incorporation into the aqueous system.',
    'El polisorbato 20 es un tensioactivo no iónico que ayuda a solubilizar los componentes aromáticos para incorporarlos al sistema acuoso.',
    'Le polysorbate 20 est un tensioactif non ionique qui aide à solubiliser les composants aromatiques pour leur incorporation dans le système aqueux.',
    'Polysorbat 20 ist ein nichtionisches Tensid, das Aromakomponenten für die Einarbeitung in das wässrige System solubilisiert.',
  );

  final flavourConcentrate = ingredient(
    t(
      'FLAVOUR CONCENTRATE',
      'CONCENTRADO AROMÁTICO',
      'CONCENTRÉ AROMATIQUE',
      'AROMAKONZENTRAT',
    ),
    Icons.science_outlined,
    'mouthwash_flavour_concentrate',
    'The flavour concentrate is a prepared mixture of flavour components and solubilizer designed for incorporation into the mouthwash base.',
    'El concentrado aromático es una mezcla preparada de componentes aromáticos y solubilizante para incorporarla a la base del enjuague bucal.',
    'Le concentré aromatique est un mélange préparé de composants aromatiques et de solubilisant destiné à être incorporé à la base du bain de bouche.',
    'Das Aromakonzentrat ist eine vorbereitete Mischung aus Aromakomponenten und Solubilisator zur Einarbeitung in die Mundspülungsgrundlage.',
  );

  final flavouredBase = ingredient(
    t(
      'FLAVOURED MOUTHWASH BASE',
      'BASE DE ENJUAGUE AROMATIZADA',
      'BASE DE BAIN DE BOUCHE AROMATISÉE',
      'AROMATISIERTE MUNDSPÜLUNGSGRUNDLAGE',
    ),
    Icons.science_outlined,
    'flavoured_mouthwash_base',
    'The flavoured mouthwash base is produced after the flavour concentrate has been uniformly incorporated into the sweetened humectant base.',
    'La base aromatizada se obtiene al incorporar uniformemente el concentrado aromático a la base humectante edulcorada.',
    'La base aromatisée est obtenue après incorporation homogène du concentré aromatique dans la base humectante édulcorée.',
    'Die aromatisierte Mundspülungsgrundlage entsteht durch gleichmäßige Einarbeitung des Aromakonzentrats in die gesüßte Feuchthaltemittelgrundlage.',
  );

  final fluoride = ingredient(
    t(
      'SODIUM FLUORIDE',
      'FLUORURO DE SODIO',
      'FLUORURE DE SODIUM',
      'NATRIUMFLUORID',
    ),
    Icons.science_outlined,
    'sodium_fluoride',
    'Sodium fluoride is the fluoride source used as the active ingredient in this mouthwash formulation.',
    'El fluoruro de sodio es la fuente de fluoruro utilizada como principio activo en esta formulación.',
    'Le fluorure de sodium est la source de fluorure utilisée comme principe actif dans cette formulation.',
    'Natriumfluorid dient in dieser Mundspülungsformulierung als Wirkstoff und Fluoridquelle.',
  );

  final fluoridatedBase = ingredient(
    t(
      'FLUORIDATED MOUTHWASH BASE',
      'BASE DE ENJUAGUE CON FLUORURO',
      'BASE DE BAIN DE BOUCHE FLUORÉE',
      'FLUORIDHALTIGE MUNDSPÜLUNGSGRUNDLAGE',
    ),
    Icons.science_outlined,
    'fluoridated_mouthwash_base',
    'The fluoridated mouthwash base is the flavoured base after incorporation of the sodium fluoride active ingredient.',
    'La base fluorada es la base aromatizada después de incorporar el fluoruro de sodio como principio activo.',
    'La base fluorée est la base aromatisée après incorporation du fluorure de sodium comme principe actif.',
    'Die fluoridhaltige Mundspülungsgrundlage ist die aromatisierte Grundlage nach Einarbeitung des Wirkstoffs Natriumfluorid.',
  );

  final cpc = ingredient(
    'CETYLPYRIDINIUM CHLORIDE (CPC)',
    Icons.shield_outlined,
    'cetylpyridinium_chloride',
    'Cetylpyridinium chloride is included as the antimicrobial ingredient in this mouthwash formulation.',
    'El cloruro de cetilpiridinio se incorpora como ingrediente antimicrobiano de esta formulación.',
    'Le chlorure de cétylpyridinium est incorporé comme ingrédient antimicrobien dans cette formulation.',
    'Cetylpyridiniumchlorid wird als antimikrobieller Inhaltsstoff in diese Formulierung eingearbeitet.',
  );

  final antimicrobialBase = ingredient(
    t(
      'ANTIMICROBIAL FLUORIDATED MOUTHWASH',
      'ENJUAGUE FLUORADO ANTIMICROBIANO',
      'BAIN DE BOUCHE FLUORÉ ANTIMICROBIEN',
      'ANTIMIKROBIELLE FLUORIDHALTIGE MUNDSPÜLUNG',
    ),
    Icons.local_drink_outlined,
    'antimicrobial_fluoridated_mouthwash',
    'This intermediate contains the fluoridated mouthwash base with cetylpyridinium chloride incorporated as the antimicrobial ingredient.',
    'Este producto intermedio contiene la base fluorada con cloruro de cetilpiridinio incorporado como ingrediente antimicrobiano.',
    'Ce produit intermédiaire contient la base fluorée avec du chlorure de cétylpyridinium incorporé comme ingrédient antimicrobien.',
    'Dieses Zwischenprodukt enthält die fluoridhaltige Grundlage mit eingearbeitetem Cetylpyridiniumchlorid als antimikrobiellem Inhaltsstoff.',
  );

  final colour = ingredient(
    t(
      'APPROVED WATER-SOLUBLE COLOUR',
      'COLORANTE HIDROSOLUBLE AUTORIZADO',
      'COLORANT HYDROSOLUBLE AUTORISÉ',
      'ZUGELASSENER WASSERLÖSLICHER FARBSTOFF',
    ),
    Icons.palette_outlined,
    'mouthwash_colour',
    'An approved water-soluble colour provides the intended visual appearance of the mouthwash.',
    'Un colorante hidrosoluble autorizado proporciona el aspecto visual previsto del enjuague bucal.',
    'Un colorant hydrosoluble autorisé donne au bain de bouche l’aspect visuel souhaité.',
    'Ein zugelassener wasserlöslicher Farbstoff verleiht der Mundspülung das gewünschte Aussehen.',
  );

  final colouredMouthwash = ingredient(
    t(
      'COLOURED MOUTHWASH',
      'ENJUAGUE BUCAL COLOREADO',
      'BAIN DE BOUCHE COLORÉ',
      'GEFÄRBTE MUNDSPÜLUNG',
    ),
    Icons.local_drink_outlined,
    'coloured_mouthwash',
    'The coloured mouthwash is produced after uniform incorporation of the approved water-soluble colour.',
    'El enjuague bucal coloreado se obtiene tras incorporar uniformemente el colorante hidrosoluble autorizado.',
    'Le bain de bouche coloré est obtenu après incorporation homogène du colorant hydrosoluble autorisé.',
    'Die gefärbte Mundspülung entsteht durch gleichmäßige Einarbeitung des zugelassenen wasserlöslichen Farbstoffs.',
  );

  final finalMouthwash = ingredient(
    t(
      'FINAL MOUTHWASH',
      'ENJUAGUE BUCAL FINAL',
      'BAIN DE BOUCHE FINAL',
      'FERTIGE MUNDSPÜLUNG',
    ),
    Icons.local_drink_outlined,
    'mouthwash',
    'The final mouthwash is the completed formulation after adjustment to the intended quantity and formulation characteristics.',
    'El enjuague bucal final es la formulación terminada tras ajustar la cantidad y las características previstas.',
    'Le bain de bouche final est la formulation terminée après ajustement à la quantité et aux caractéristiques souhaitées.',
    'Die fertige Mundspülung liegt nach Einstellung der vorgesehenen Menge und Formulierungseigenschaften vor.',
  );

  final step9 = ReactionStep(
    stepNumber: 9,
    heading: t(
      'FINAL ADJUSTMENT',
      'AJUSTE FINAL',
      'AJUSTEMENT FINAL',
      'ENDGÜLTIGE EINSTELLUNG',
    ),
    reactants: [water, colouredMouthwash],
    product: finalMouthwash,
    learningData: StepLearningData(
      title: t(
        'FINAL FORMULATION ADJUSTMENT',
        'AJUSTE FINAL DE LA FORMULACIÓN',
        'AJUSTEMENT FINAL DE LA FORMULATION',
        'ENDGÜLTIGE FORMULIERUNGSEINSTELLUNG',
      ),
      animationType: StepAnimationType.adjust,
      description: t(
        'Purified water is added q.s. to adjust the mouthwash to its intended final quantity. The completed product should meet the intended composition, appearance and physical characteristics.',
        'Se añade agua purificada c.s. para ajustar el enjuague bucal a la cantidad final prevista. El producto debe cumplir la composición, el aspecto y las características físicas deseadas.',
        'De l’eau purifiée est ajoutée q.s. pour ajuster le bain de bouche à la quantité finale prévue. Le produit doit présenter la composition, l’aspect et les caractéristiques physiques souhaités.',
        'Gereinigtes Wasser wird q.s. zur Einstellung der vorgesehenen Endmenge zugesetzt. Das fertige Produkt sollte die gewünschte Zusammensetzung, das Aussehen und die physikalischen Eigenschaften aufweisen.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'PURIFIED WATER Q.S.',
          'AGUA PURIFICADA C.S.',
          'EAU PURIFIÉE Q.S.',
          'GEREINIGTES WASSER Q.S.',
          'Purified water is added as required to reach the final quantity.',
          'Se añade agua purificada según sea necesario para alcanzar la cantidad final.',
          'L’eau purifiée est ajoutée selon les besoins pour atteindre la quantité finale.',
          'Gereinigtes Wasser wird nach Bedarf bis zur Endmenge zugesetzt.',
        ),
        point(
          Icons.tune_outlined,
          'FINAL ADJUSTMENT',
          'AJUSTE FINAL',
          'AJUSTEMENT FINAL',
          'ENDGÜLTIGE EINSTELLUNG',
          'The formulation is adjusted to its intended final composition.',
          'La formulación se ajusta a la composición final prevista.',
          'La formulation est ajustée à la composition finale souhaitée.',
          'Die Formulierung wird auf die vorgesehene Endzusammensetzung eingestellt.',
        ),
        point(
          Icons.check_circle_outline,
          'FINAL MOUTHWASH',
          'ENJUAGUE BUCAL FINAL',
          'BAIN DE BOUCHE FINAL',
          'FERTIGE MUNDSPÜLUNG',
          'The completed formulation is now the final mouthwash product.',
          'La formulación terminada constituye el producto final.',
          'La formulation terminée constitue le produit final.',
          'Die fertige Formulierung ist nun das Endprodukt.',
        ),
      ],
    ),
    nextStep: null,
  );

  final step8 = ReactionStep(
    stepNumber: 8,
    heading: t(
      'ADD COLOUR',
      'AÑADIR COLORANTE',
      'AJOUTER LE COLORANT',
      'FARBSTOFF HINZUFÜGEN',
    ),
    reactants: [colour, antimicrobialBase],
    product: colouredMouthwash,
    learningData: StepLearningData(
      title: t(
        'FINISHING THE APPEARANCE',
        'AJUSTE DEL ASPECTO',
        'FINITION DE L’ASPECT',
        'OPTISCHE GESTALTUNG',
      ),
      animationType: StepAnimationType.incorporate,
      description: t(
        'An approved water-soluble colour is incorporated to provide the intended appearance and should be uniformly distributed.',
        'Se incorpora un colorante hidrosoluble autorizado para proporcionar el aspecto previsto y debe distribuirse uniformemente.',
        'Un colorant hydrosoluble autorisé est incorporé pour obtenir l’aspect souhaité et doit être réparti uniformément.',
        'Ein zugelassener wasserlöslicher Farbstoff wird für das gewünschte Aussehen eingearbeitet und sollte gleichmäßig verteilt sein.',
      ),
      learningPoints: [
        point(
          Icons.palette_outlined,
          'COLOUR',
          'COLOR',
          'COULEUR',
          'FARBE',
          'The approved colour provides the intended visual appearance.',
          'El colorante autorizado proporciona el aspecto previsto.',
          'Le colorant autorisé donne l’aspect souhaité.',
          'Der zugelassene Farbstoff sorgt für das gewünschte Aussehen.',
        ),
        point(
          Icons.blur_on_outlined,
          'WATER-SOLUBLE',
          'HIDROSOLUBLE',
          'HYDROSOLUBLE',
          'WASSERLÖSLICH',
          'A water-soluble colour is suitable for the aqueous formulation.',
          'Un colorante hidrosoluble es adecuado para la formulación acuosa.',
          'Un colorant hydrosoluble convient à la formulation aqueuse.',
          'Ein wasserlöslicher Farbstoff eignet sich für die wässrige Formulierung.',
        ),
        point(
          Icons.visibility_outlined,
          'UNIFORM APPEARANCE',
          'ASPECTO UNIFORME',
          'ASPECT HOMOGÈNE',
          'GLEICHMÄSSIGES AUSSEHEN',
          'The colour should be evenly distributed throughout the mouthwash.',
          'El colorante debe distribuirse uniformemente por todo el enjuague bucal.',
          'Le colorant doit être réparti uniformément dans tout le bain de bouche.',
          'Der Farbstoff sollte gleichmäßig in der gesamten Mundspülung verteilt sein.',
        ),
      ],
    ),
    nextStep: step9,
  );

  final step7 = ReactionStep(
    stepNumber: 7,
    heading: t(
      'ADD ANTIMICROBIAL',
      'AÑADIR EL ANTIMICROBIANO',
      'AJOUTER L’ANTIMICROBIEN',
      'ANTIMIKROBIELLEN WIRKSTOFF HINZUFÜGEN',
    ),
    reactants: [cpc, fluoridatedBase],
    product: antimicrobialBase,
    learningData: StepLearningData(
      title: t(
        'ADDING THE ANTIMICROBIAL PHASE',
        'ADICIÓN DE LA FASE ANTIMICROBIANA',
        'AJOUT DE LA PHASE ANTIMICROBIENNE',
        'ZUGABE DER ANTIMIKROBIELLEN PHASE',
      ),
      animationType: StepAnimationType.activate,
      description: t(
        'Cetylpyridinium chloride is incorporated into the fluoridated base as the antimicrobial ingredient and distributed throughout the formulation.',
        'El cloruro de cetilpiridinio se incorpora a la base fluorada como ingrediente antimicrobiano y se distribuye por toda la formulación.',
        'Le chlorure de cétylpyridinium est incorporé à la base fluorée comme ingrédient antimicrobien et réparti dans toute la formulation.',
        'Cetylpyridiniumchlorid wird als antimikrobieller Inhaltsstoff in die fluoridhaltige Grundlage eingearbeitet und in der Formulierung verteilt.',
      ),
      learningPoints: [
        point(
          Icons.shield_outlined,
          'ANTIMICROBIAL',
          'ANTIMICROBIANO',
          'ANTIMICROBIEN',
          'ANTIMIKROBIELL',
          'Cetylpyridinium chloride is included for its antimicrobial function.',
          'El cloruro de cetilpiridinio se incluye por su función antimicrobiana.',
          'Le chlorure de cétylpyridinium est utilisé pour sa fonction antimicrobienne.',
          'Cetylpyridiniumchlorid wird aufgrund seiner antimikrobiellen Funktion eingesetzt.',
        ),
        point(
          Icons.science_outlined,
          'ACTIVE PHASE',
          'FASE ACTIVA',
          'PHASE ACTIVE',
          'WIRKSTOFFPHASE',
          'The antimicrobial is incorporated into the already fluoridated base.',
          'El antimicrobiano se incorpora a la base ya fluorada.',
          'L’antimicrobien est incorporé à la base déjà fluorée.',
          'Der antimikrobielle Inhaltsstoff wird in die bereits fluoridhaltige Grundlage eingearbeitet.',
        ),
        point(
          Icons.balance_outlined,
          'UNIFORM DISTRIBUTION',
          'DISTRIBUCIÓN UNIFORME',
          'RÉPARTITION HOMOGÈNE',
          'GLEICHMÄSSIGE VERTEILUNG',
          'Consistent distribution helps maintain a uniform formulation.',
          'Una distribución uniforme ayuda a mantener la homogeneidad.',
          'Une répartition homogène aide à maintenir l’uniformité.',
          'Eine gleichmäßige Verteilung unterstützt die Homogenität.',
        ),
      ],
    ),
    nextStep: step8,
  );

  final step6 = ReactionStep(
    stepNumber: 6,
    heading: t(
      'ADD ACTIVE INGREDIENT',
      'AÑADIR EL PRINCIPIO ACTIVO',
      'AJOUTER LE PRINCIPE ACTIF',
      'WIRKSTOFF HINZUFÜGEN',
    ),
    reactants: [fluoride, flavouredBase],
    product: fluoridatedBase,
    learningData: StepLearningData(
      title: t(
        'ADDING THE ACTIVE INGREDIENT',
        'ADICIÓN DEL PRINCIPIO ACTIVO',
        'AJOUT DU PRINCIPE ACTIF',
        'ZUGABE DES WIRKSTOFFS',
      ),
      animationType: StepAnimationType.activate,
      description: t(
        'Sodium fluoride is incorporated as the active ingredient. Fluoride mouthwash can provide a fluoride source that supports caries prevention when used according to product directions.',
        'Se incorpora fluoruro de sodio como principio activo. El enjuague bucal con fluoruro puede contribuir a prevenir la caries cuando se utiliza según las instrucciones del producto.',
        'Le fluorure de sodium est incorporé comme principe actif. Un bain de bouche fluoré peut contribuer à prévenir les caries lorsqu’il est utilisé conformément aux instructions.',
        'Natriumfluorid wird als Wirkstoff eingearbeitet. Eine fluoridhaltige Mundspülung kann bei bestimmungsgemäßer Anwendung zur Kariesvorbeugung beitragen.',
      ),
      learningPoints: [
        point(
          Icons.science_outlined,
          'ACTIVE INGREDIENT',
          'PRINCIPIO ACTIVO',
          'PRINCIPE ACTIF',
          'WIRKSTOFF',
          'Sodium fluoride provides the fluoride source.',
          'El fluoruro de sodio proporciona la fuente de fluoruro.',
          'Le fluorure de sodium fournit la source de fluorure.',
          'Natriumfluorid dient als Fluoridquelle.',
        ),
        point(
          Icons.shield_outlined,
          'DENTAL PROTECTION',
          'PROTECCIÓN DENTAL',
          'PROTECTION DENTAIRE',
          'ZAHNSCHUTZ',
          'Fluoride supports caries prevention when used appropriately.',
          'El fluoruro contribuye a prevenir la caries si se utiliza adecuadamente.',
          'Le fluorure contribue à prévenir les caries lorsqu’il est utilisé correctement.',
          'Fluorid unterstützt bei sachgemäßer Anwendung die Kariesvorbeugung.',
        ),
        point(
          Icons.balance_outlined,
          'UNIFORM DISTRIBUTION',
          'DISTRIBUCIÓN UNIFORME',
          'RÉPARTITION HOMOGÈNE',
          'GLEICHMÄSSIGE VERTEILUNG',
          'The active ingredient should be distributed consistently throughout the formulation.',
          'El principio activo debe distribuirse uniformemente por toda la formulación.',
          'Le principe actif doit être réparti uniformément dans toute la formulation.',
          'Der Wirkstoff sollte gleichmäßig in der gesamten Formulierung verteilt sein.',
        ),
      ],
    ),
    nextStep: step7,
  );

  final step5 = ReactionStep(
    stepNumber: 5,
    heading: t(
      'MAKE FLAVOURED MOUTHWASH BASE',
      'PREPARAR LA BASE AROMATIZADA',
      'PRÉPARER LA BASE AROMATISÉE',
      'AROMATISIERTE MUNDSPÜLUNGSGRUNDLAGE HERSTELLEN',
    ),
    reactants: [flavourConcentrate, sweetenedBase],
    product: flavouredBase,
    learningData: StepLearningData(
      title: t(
        'INCORPORATING THE FLAVOUR',
        'INCORPORACIÓN DEL AROMA',
        'INCORPORATION DE L’ARÔME',
        'EINARBEITUNG DES AROMAS',
      ),
      animationType: StepAnimationType.mix,
      description: t(
        'The prepared flavour concentrate is incorporated into the sweetened humectant base to combine the vehicle with the intended flavour profile.',
        'El concentrado aromático preparado se incorpora a la base humectante edulcorada para combinar el vehículo con el perfil aromático previsto.',
        'Le concentré aromatique préparé est incorporé à la base humectante édulcorée afin d’associer le véhicule au profil aromatique souhaité.',
        'Das vorbereitete Aromakonzentrat wird in die gesüßte Feuchthaltemittelgrundlage eingearbeitet, um das Vehikel mit dem gewünschten Aromaprofil zu verbinden.',
      ),
      learningPoints: [
        point(
          Icons.local_florist_outlined,
          'FLAVOUR',
          'AROMA',
          'ARÔME',
          'AROMA',
          'The concentrate provides the characteristic flavour profile.',
          'El concentrado proporciona el perfil aromático característico.',
          'Le concentré apporte le profil aromatique caractéristique.',
          'Das Konzentrat liefert das charakteristische Aromaprofil.',
        ),
        point(
          Icons.merge_type,
          'INCORPORATION',
          'INCORPORACIÓN',
          'INCORPORATION',
          'EINARBEITUNG',
          'The concentrate is distributed throughout the mouthwash base.',
          'El concentrado se distribuye por toda la base.',
          'Le concentré est réparti dans toute la base.',
          'Das Konzentrat wird in der gesamten Grundlage verteilt.',
        ),
        point(
          Icons.waves_outlined,
          'UNIFORMITY',
          'UNIFORMIDAD',
          'HOMOGÉNÉITÉ',
          'HOMOGENITÄT',
          'Proper mixing promotes consistent distribution.',
          'Una mezcla adecuada favorece una distribución uniforme.',
          'Un mélange approprié favorise une répartition homogène.',
          'Gleichmäßiges Mischen fördert eine einheitliche Verteilung.',
        ),
      ],
    ),
    nextStep: step6,
  );

  final step4 = ReactionStep(
    stepNumber: 4,
    heading: t(
      'MAKE FLAVOUR CONCENTRATE',
      'PREPARAR EL CONCENTRADO AROMÁTICO',
      'PRÉPARER LE CONCENTRÉ AROMATIQUE',
      'AROMAKONZENTRAT HERSTELLEN',
    ),
    reactants: [peppermint, menthol, polysorbate],
    product: flavourConcentrate,
    learningData: StepLearningData(
      title: t(
        'SOLUBILIZING THE FLAVOUR',
        'SOLUBILIZACIÓN DEL AROMA',
        'SOLUBILISATION DE L’ARÔME',
        'SOLUBILISIERUNG DES AROMAS',
      ),
      animationType: StepAnimationType.combine,
      description: t(
        'Peppermint flavour and menthol are combined with Polysorbate 20 to prepare a flavour concentrate suitable for the aqueous mouthwash system.',
        'El aroma de menta y el mentol se combinan con polisorbato 20 para preparar un concentrado aromático adecuado para el sistema acuoso.',
        'L’arôme de menthe poivrée et le menthol sont associés au polysorbate 20 pour préparer un concentré adapté au système aqueux.',
        'Pfefferminzaroma und Menthol werden mit Polysorbat 20 kombiniert, um ein für das wässrige System geeignetes Aromakonzentrat herzustellen.',
      ),
      learningPoints: [
        point(
          Icons.local_florist_outlined,
          'PEPPERMINT FLAVOUR',
          'AROMA DE MENTA',
          'ARÔME DE MENTHE',
          'PFEFFERMINZAROMA',
          'Peppermint provides the characteristic flavour and aroma.',
          'La menta aporta el sabor y el aroma característicos.',
          'La menthe apporte la saveur et l’arôme caractéristiques.',
          'Pfefferminze liefert den charakteristischen Geschmack und Geruch.',
        ),
        point(
          Icons.ac_unit_outlined,
          'MENTHOL',
          'MENTOL',
          'MENTHOL',
          'MENTHOL',
          'Menthol contributes a characteristic cooling sensation.',
          'El mentol aporta una sensación refrescante característica.',
          'Le menthol procure une sensation rafraîchissante caractéristique.',
          'Menthol erzeugt ein charakteristisches Kühlgefühl.',
        ),
        point(
          Icons.bubble_chart_outlined,
          'SOLUBILIZATION',
          'SOLUBILIZACIÓN',
          'SOLUBILISATION',
          'SOLUBILISIERUNG',
          'Polysorbate 20 helps incorporate flavour components into the aqueous formulation.',
          'El polisorbato 20 ayuda a incorporar los componentes aromáticos a la formulación acuosa.',
          'Le polysorbate 20 facilite l’incorporation des composants aromatiques dans la formulation aqueuse.',
          'Polysorbat 20 erleichtert die Einarbeitung der Aromakomponenten in die wässrige Formulierung.',
        ),
      ],
    ),
    nextStep: step5,
  );

  final step3 = ReactionStep(
    stepNumber: 3,
    heading: t(
      'MAKE SWEETENED HUMECTANT BASE',
      'PREPARAR LA BASE HUMECTANTE EDULCORADA',
      'PRÉPARER LA BASE HUMECTANTE ÉDULCORÉE',
      'GESÜSSTE FEUCHTHALTEMITTELGRUNDLAGE HERSTELLEN',
    ),
    reactants: [glycerin, sorbitol, xylitol, saccharin, bufferedBase],
    product: sweetenedBase,
    learningData: StepLearningData(
      title: t(
        'BUILDING THE SWEETENED HUMECTANT PHASE',
        'PREPARACIÓN DE LA FASE HUMECTANTE EDULCORADA',
        'PRÉPARATION DE LA PHASE HUMECTANTE ÉDULCORÉE',
        'AUFBAU DER GESÜSSTEN FEUCHTHALTEPHASE',
      ),
      animationType: StepAnimationType.combine,
      description: t(
        'Glycerin and sorbitol contribute humectant properties, while xylitol and sodium saccharin provide sweetness. They are incorporated into the buffered base.',
        'La glicerina y el sorbitol aportan propiedades humectantes, mientras que el xilitol y la sacarina sódica aportan dulzor. Todos se incorporan a la base tamponada.',
        'La glycérine et le sorbitol apportent des propriétés humectantes, tandis que le xylitol et la saccharine sodique apportent de la douceur. Ils sont incorporés à la base tamponnée.',
        'Glycerin und Sorbit wirken feuchthaltend, während Xylit und Natriumsaccharin Süße verleihen. Die Stoffe werden in die gepufferte Grundlage eingearbeitet.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'HUMECTANTS',
          'HUMECTANTES',
          'HUMECTANTS',
          'FEUCHTHALTEMITTEL',
          'Glycerin and sorbitol help retain moisture.',
          'La glicerina y el sorbitol ayudan a retener la humedad.',
          'La glycérine et le sorbitol aident à retenir l’humidité.',
          'Glycerin und Sorbit helfen, Feuchtigkeit zu binden.',
        ),
        point(
          Icons.grain_outlined,
          'SWEETENERS',
          'EDULCORANTES',
          'ÉDULCORANTS',
          'SÜSSUNGSMITTEL',
          'Xylitol and sodium saccharin contribute sweetness.',
          'El xilitol y la sacarina sódica aportan dulzor.',
          'Le xylitol et la saccharine sodique apportent de la douceur.',
          'Xylit und Natriumsaccharin sorgen für Süße.',
        ),
        point(
          Icons.sentiment_satisfied_alt_outlined,
          'PALATABILITY',
          'PALATABILIDAD',
          'PALATABILITÉ',
          'GESCHMACKSAKZEPTANZ',
          'The sweetened phase helps improve sensory acceptability.',
          'La fase edulcorada ayuda a mejorar la aceptación sensorial.',
          'La phase édulcorée contribue à améliorer l’acceptabilité sensorielle.',
          'Die gesüßte Phase verbessert die sensorische Akzeptanz.',
        ),
      ],
    ),
    nextStep: step4,
  );

  final step2 = ReactionStep(
    stepNumber: 2,
    heading: t(
      'MAKE BUFFERED AQUEOUS BASE',
      'PREPARAR LA BASE ACUOSA TAMPONADA',
      'PRÉPARER LA BASE AQUEUSE TAMPONNÉE',
      'GEPUFFERTE WÄSSRIGE GRUNDLAGE HERSTELLEN',
    ),
    reactants: [citricAcid, sodiumCitrate, aqueousBase],
    product: bufferedBase,
    learningData: StepLearningData(
      title: t(
        'WHY USE A BUFFER SYSTEM?',
        '¿POR QUÉ UTILIZAR UN SISTEMA TAMPÓN?',
        'POURQUOI UTILISER UN SYSTÈME TAMPON ?',
        'WARUM EIN PUFFERSYSTEM VERWENDEN?',
      ),
      animationType: StepAnimationType.adjust,
      description: t(
        'Citric acid and sodium citrate are incorporated to establish a buffer system that helps resist unwanted pH changes as ingredients are added.',
        'Se incorporan ácido cítrico y citrato de sodio para establecer un sistema tampón que ayude a resistir cambios indeseados del pH al añadir otros ingredientes.',
        'L’acide citrique et le citrate de sodium sont incorporés pour former un système tampon qui aide à limiter les variations indésirables du pH lors de l’ajout d’ingrédients.',
        'Zitronensäure und Natriumcitrat werden eingearbeitet, um ein Puffersystem zu bilden, das unerwünschte pH-Änderungen bei der Zugabe weiterer Inhaltsstoffe begrenzt.',
      ),
      learningPoints: [
        point(
          Icons.science_outlined,
          'BUFFER SYSTEM',
          'SISTEMA TAMPÓN',
          'SYSTÈME TAMPON',
          'PUFFERSYSTEM',
          'Citric acid and sodium citrate work together as a buffer pair.',
          'El ácido cítrico y el citrato de sodio actúan conjuntamente como pareja tampón.',
          'L’acide citrique et le citrate de sodium forment un couple tampon.',
          'Zitronensäure und Natriumcitrat bilden gemeinsam ein Puffersystem.',
        ),
        point(
          Icons.balance_outlined,
          'PH CONTROL',
          'CONTROL DEL PH',
          'CONTRÔLE DU PH',
          'PH-KONTROLLE',
          'The buffer helps maintain the intended pH range.',
          'El tampón ayuda a mantener el intervalo de pH previsto.',
          'Le tampon aide à maintenir la plage de pH souhaitée.',
          'Der Puffer hilft, den vorgesehenen pH-Bereich einzuhalten.',
        ),
        point(
          Icons.tune_outlined,
          'FORMULATION STABILITY',
          'ESTABILIDAD DE LA FORMULACIÓN',
          'STABILITÉ DE LA FORMULATION',
          'FORMULIERUNGSSTABILITÄT',
          'Controlled pH supports the desired properties of the mouthwash.',
          'El pH controlado favorece las propiedades deseadas del enjuague bucal.',
          'Un pH contrôlé favorise les propriétés souhaitées du bain de bouche.',
          'Ein kontrollierter pH-Wert unterstützt die gewünschten Eigenschaften der Mundspülung.',
        ),
      ],
    ),
    nextStep: step3,
  );

  final step1 = ReactionStep(
    stepNumber: 1,
    heading: t(
      'MAKE PRESERVED AQUEOUS BASE',
      'PREPARAR LA BASE ACUOSA CONSERVADA',
      'PRÉPARER LA BASE AQUEUSE CONSERVÉE',
      'KONSERVIERTE WÄSSRIGE GRUNDLAGE HERSTELLEN',
    ),
    reactants: [water, preservative],
    product: aqueousBase,
    learningData: StepLearningData(
      title: t(
        'BUILDING THE AQUEOUS/PRESERVATIVE PHASE',
        'PREPARACIÓN DE LA FASE ACUOSA Y CONSERVANTE',
        'PRÉPARATION DE LA PHASE AQUEUSE ET CONSERVATRICE',
        'AUFBAU DER WÄSSRIGEN KONSERVIERUNGSPHASE',
      ),
      animationType: StepAnimationType.combine,
      description: t(
        'Purified water forms the main aqueous medium. Sodium benzoate is added to help protect the formulation against microbial growth during storage.',
        'El agua purificada constituye el medio acuoso principal. Se añade benzoato de sodio para ayudar a proteger la formulación frente al crecimiento microbiano durante el almacenamiento.',
        'L’eau purifiée constitue le principal milieu aqueux. Le benzoate de sodium est ajouté pour aider à protéger la formulation contre la croissance microbienne pendant le stockage.',
        'Gereinigtes Wasser bildet das wichtigste wässrige Medium. Natriumbenzoat wird zugesetzt, um die Formulierung während der Lagerung vor mikrobiellem Wachstum zu schützen.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'AQUEOUS VEHICLE',
          'VEHÍCULO ACUOSO',
          'VÉHICULE AQUEUX',
          'WÄSSRIGES VEHIKEL',
          'Purified water provides the main liquid medium.',
          'El agua purificada proporciona el medio líquido principal.',
          'L’eau purifiée fournit le principal milieu liquide.',
          'Gereinigtes Wasser bildet das wichtigste flüssige Medium.',
        ),
        point(
          Icons.shield_outlined,
          'PRESERVATION',
          'CONSERVACIÓN',
          'CONSERVATION',
          'KONSERVIERUNG',
          'Sodium benzoate contributes preservative protection.',
          'El benzoato de sodio aporta protección conservante.',
          'Le benzoate de sodium contribue à la conservation.',
          'Natriumbenzoat trägt zum Konservierungsschutz bei.',
        ),
        point(
          Icons.science_outlined,
          'FORMULATION FOUNDATION',
          'BASE DE LA FORMULACIÓN',
          'BASE DE LA FORMULATION',
          'FORMULIERUNGSGRUNDLAGE',
          'The preserved aqueous base is the starting medium for later phases.',
          'La base acuosa conservada es el medio inicial para las fases posteriores.',
          'La base aqueuse conservée constitue le milieu de départ des phases suivantes.',
          'Die konservierte wässrige Grundlage bildet das Ausgangsmedium für die folgenden Phasen.',
        ),
      ],
    ),
    nextStep: step2,
  );

  return [step1, step2, step3, step4, step5, step6, step7, step8, step9];
}

final List<ReactionStep> mouthwashSteps = mouthwashStepsFor(const Locale('en'));
