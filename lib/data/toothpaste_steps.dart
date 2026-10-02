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

List<ReactionStep> toothpasteStepsFor(Locale locale) {
  String t(String en, String es, String fr, String de) =>
      _tr(locale, en, es, fr, de);

  IngredientData ingredient(
    String nameEn,
    String nameEs,
    String nameFr,
    String nameDe,
    IconData icon,
    String model,
    String en,
    String es,
    String fr,
    String de,
  ) {
    return IngredientData(
      name: t(nameEn, nameEs, nameFr, nameDe),
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

  final glycerin = ingredient(
    'GLYCERIN',
    'GLICERINA',
    'GLYCÉRINE',
    'GLYCERIN',
    Icons.water_drop_outlined,
    'glycerin',
    'Glycerin is a humectant that helps retain moisture in the toothpaste formulation and contributes to its smooth texture.',
    'La glicerina es un humectante que ayuda a retener la humedad en la formulación de la pasta dental y contribuye a su textura suave.',
    'La glycérine est un humectant qui aide à retenir l’humidité dans la formulation du dentifrice et contribue à sa texture lisse.',
    'Glycerin ist ein Feuchthaltemittel, das Feuchtigkeit in der Zahnpasta bindet und zu ihrer geschmeidigen Konsistenz beiträgt.',
  );

  final sorbitol = ingredient(
    'SORBITOL SOLUTION',
    'SOLUCIÓN DE SORBITOL',
    'SOLUTION DE SORBITOL',
    'SORBITLÖSUNG',
    Icons.opacity_outlined,
    'sorbitol_solution',
    'Sorbitol solution acts as a humectant and contributes to moisture retention, sweetness and toothpaste consistency.',
    'La solución de sorbitol actúa como humectante y contribuye a retener la humedad, aportar dulzor y mantener la consistencia de la pasta dental.',
    'La solution de sorbitol agit comme humectant et contribue à la rétention d’humidité, à la douceur et à la consistance du dentifrice.',
    'Sorbitlösung wirkt als Feuchthaltemittel und trägt zur Feuchtigkeitsbindung, Süße und Konsistenz der Zahnpasta bei.',
  );

  final humectantBase = ingredient(
    'HUMECTANT BASE',
    'BASE HUMECTANTE',
    'BASE HUMECTANTE',
    'FEUCHTHALTEGRUNDLAGE',
    Icons.science_outlined,
    'humectant_base',
    'The humectant base combines glycerin and sorbitol solution. It retains moisture and provides part of the vehicle for subsequent ingredients.',
    'La base humectante combina glicerina y solución de sorbitol. Retiene la humedad y forma parte del vehículo para los ingredientes posteriores.',
    'La base humectante associe la glycérine et la solution de sorbitol. Elle retient l’humidité et constitue une partie du véhicule des ingrédients suivants.',
    'Die Feuchthaltegrundlage kombiniert Glycerin und Sorbitlösung. Sie bindet Feuchtigkeit und bildet einen Teil des Trägers für die weiteren Inhaltsstoffe.',
  );

  final cmc = ingredient(
    'SODIUM CARBOXYMETHYLCELLULOSE (NA-CMC)',
    'CARBOXIMETILCELULOSA SÓDICA (NA-CMC)',
    'CARBOXYMÉTHYLCELLULOSE SODIQUE (NA-CMC)',
    'NATRIUMCARBOXYMETHYLCELLULOSE (NA-CMC)',
    Icons.grain_outlined,
    'na_cmc',
    'Sodium carboxymethylcellulose is a polymeric binder and thickener. It hydrates in water and contributes viscosity and structure to toothpaste.',
    'La carboximetilcelulosa sódica es un aglutinante polimérico y espesante. Se hidrata en agua y aporta viscosidad y estructura a la pasta dental.',
    'La carboxyméthylcellulose sodique est un liant polymérique et un épaississant. Elle s’hydrate dans l’eau et apporte viscosité et structure au dentifrice.',
    'Natriumcarboxymethylcellulose ist ein polymeres Bindemittel und Verdickungsmittel. Sie hydratisiert in Wasser und verleiht der Zahnpasta Viskosität und Struktur.',
  );

  final water = ingredient(
    'PURIFIED WATER',
    'AGUA PURIFICADA',
    'EAU PURIFIÉE',
    'GEREINIGTES WASSER',
    Icons.water_drop_outlined,
    'purified_water',
    'Purified water provides the aqueous medium needed to hydrate sodium carboxymethylcellulose.',
    'El agua purificada proporciona el medio acuoso necesario para hidratar la carboximetilcelulosa sódica.',
    'L’eau purifiée fournit le milieu aqueux nécessaire à l’hydratation de la carboxyméthylcellulose sodique.',
    'Gereinigtes Wasser stellt das wässrige Medium bereit, das zur Hydratisierung von Natriumcarboxymethylcellulose benötigt wird.',
  );

  final binderSolution = ingredient(
    'HYDRATED BINDER SOLUTION',
    'SOLUCIÓN AGLUTINANTE HIDRATADA',
    'SOLUTION DE LIANT HYDRATÉ',
    'HYDRATISIERTE BINDEMITTELLÖSUNG',
    Icons.science_outlined,
    'hydrated_binder_solution',
    'This solution contains sodium carboxymethylcellulose dispersed and hydrated in purified water.',
    'Esta solución contiene carboximetilcelulosa sódica dispersada e hidratada en agua purificada.',
    'Cette solution contient de la carboxyméthylcellulose sodique dispersée et hydratée dans de l’eau purifiée.',
    'Diese Lösung enthält in gereinigtem Wasser dispergierte und hydratisierte Natriumcarboxymethylcellulose.',
  );

  final vehicleBase = ingredient(
    'VEHICLE BASE',
    'BASE VEHÍCULO',
    'BASE VÉHICULAIRE',
    'TRÄGERGRUNDLAGE',
    Icons.science_outlined,
    'vehicle_base',
    'The vehicle base combines the humectant and hydrated binder phases and provides the main medium for the remaining toothpaste ingredients.',
    'La base vehículo combina las fases humectante y aglutinante hidratada y proporciona el medio principal para los demás ingredientes.',
    'La base véhiculaire associe les phases humectante et liante hydratée et constitue le milieu principal des autres ingrédients du dentifrice.',
    'Die Trägergrundlage kombiniert die Feuchthalte- und die hydratisierte Bindemittelphase und dient als Hauptmedium für die übrigen Zahnpastabestandteile.',
  );

  final calciumCarbonate = ingredient(
    'CALCIUM CARBONATE',
    'CARBONATO DE CALCIO',
    'CARBONATE DE CALCIUM',
    'CALCIUMCARBONAT',
    Icons.grain_outlined,
    'calcium_carbonate',
    'Calcium carbonate is an abrasive used in toothpaste. It contributes to mechanical cleaning during brushing and forms part of the product bulk.',
    'El carbonato de calcio es un abrasivo utilizado en la pasta dental. Contribuye a la limpieza mecánica durante el cepillado y forma parte del volumen del producto.',
    'Le carbonate de calcium est un abrasif utilisé dans le dentifrice. Il contribue au nettoyage mécanique pendant le brossage et constitue une partie de la masse du produit.',
    'Calciumcarbonat ist ein in Zahnpasta verwendetes Abrasivmittel. Es unterstützt die mechanische Reinigung beim Zähneputzen und bildet einen Teil der Produktmasse.',
  );

  final abrasiveBase = ingredient(
    'ABRASIVE TOOTHPASTE BASE',
    'BASE DENTAL ABRASIVA',
    'BASE DENTIFRICE ABRASIVE',
    'ABRASIVE ZAHNPASTAGRUNDLAGE',
    Icons.science_outlined,
    'abrasive_toothpaste_base',
    'The abrasive toothpaste base is formed when calcium carbonate is incorporated into the prepared vehicle.',
    'La base dental abrasiva se forma al incorporar carbonato de calcio al vehículo preparado.',
    'La base de dentifrice abrasive est obtenue en incorporant le carbonate de calcium au véhicule préparé.',
    'Die abrasive Zahnpastagrundlage entsteht durch die Einarbeitung von Calciumcarbonat in die vorbereitete Trägergrundlage.',
  );

  final sls = ingredient(
    'SODIUM LAURYL SULFATE (SLS)',
    'LAURILSULFATO DE SODIO (SLS)',
    'LAURYLSULFATE DE SODIUM (SLS)',
    'NATRIUMLAURYSULFAT (SLS)',
    Icons.bubble_chart_outlined,
    'sls',
    'Sodium lauryl sulfate is a surfactant that promotes foaming and helps wet and spread toothpaste during brushing.',
    'El laurilsulfato de sodio es un tensioactivo que favorece la formación de espuma y ayuda a humedecer y distribuir la pasta dental durante el cepillado.',
    'Le laurylsulfate de sodium est un tensioactif qui favorise la formation de mousse et aide à mouiller et répartir le dentifrice pendant le brossage.',
    'Natriumlaurylsulfat ist ein Tensid, das die Schaumbildung fördert und Zahnpasta beim Zähneputzen benetzt und verteilt.',
  );

  final foamingBase = ingredient(
    'FOAMING TOOTHPASTE BASE',
    'BASE DENTAL ESPUMANTE',
    'BASE DENTIFRICE MOUSSANTE',
    'SCHAUMBILDENDE ZAHNPASTAGRUNDLAGE',
    Icons.science_outlined,
    'foaming_toothpaste_base',
    'The foaming toothpaste base is produced after sodium lauryl sulfate is incorporated into the abrasive base.',
    'La base dental espumante se obtiene al incorporar laurilsulfato de sodio a la base abrasiva.',
    'La base de dentifrice moussante est obtenue après incorporation du laurylsulfate de sodium dans la base abrasive.',
    'Die schaumbildende Zahnpastagrundlage entsteht durch die Einarbeitung von Natriumlaurylsulfat in die abrasive Grundlage.',
  );

  final fluoride = ingredient(
    'SODIUM FLUORIDE',
    'FLUORURO DE SODIO',
    'FLUORURE DE SODIUM',
    'NATRIUMFLUORID',
    Icons.science_outlined,
    'sodium_fluoride',
    'Sodium fluoride is the fluoride source used as the active ingredient in this toothpaste formulation.',
    'El fluoruro de sodio es la fuente de fluoruro utilizada como principio activo en esta formulación de pasta dental.',
    'Le fluorure de sodium est la source de fluorure utilisée comme principe actif dans cette formulation de dentifrice.',
    'Natriumfluorid ist die Fluoridquelle und der Wirkstoff dieser Zahnpastarezeptur.',
  );

  final fluoridatedBase = ingredient(
    'FLUORIDATED TOOTHPASTE BASE',
    'BASE DENTAL FLUORADA',
    'BASE DENTIFRICE FLUORÉE',
    'FLUORIDHALTIGE ZAHNPASTAGRUNDLAGE',
    Icons.science_outlined,
    'fluoridated_toothpaste_base',
    'The fluoridated toothpaste base is the foaming base after incorporation of sodium fluoride.',
    'La base dental fluorada es la base espumante después de incorporar fluoruro de sodio.',
    'La base de dentifrice fluorée est la base moussante après incorporation du fluorure de sodium.',
    'Die fluoridhaltige Zahnpastagrundlage ist die schaumbildende Grundlage nach Zugabe von Natriumfluorid.',
  );

  final peppermint = ingredient(
    'PEPPERMINT FLAVOUR',
    'AROMA DE MENTA',
    'ARÔME DE MENTHE POIVRÉE',
    'PFEFFERMINZAROMA',
    Icons.local_florist_outlined,
    'peppermint_flavour',
    'Peppermint flavour provides the characteristic flavour and aroma of toothpaste.',
    'El aroma de menta aporta el sabor y el aroma característicos de la pasta dental.',
    'L’arôme de menthe poivrée apporte la saveur et l’odeur caractéristiques du dentifrice.',
    'Pfefferminzaroma verleiht der Zahnpasta ihren charakteristischen Geschmack und Geruch.',
  );

  final saccharin = ingredient(
    'SACCHARIN SODIUM',
    'SACARINA SÓDICA',
    'SACCHARINATE DE SODIUM',
    'NATRIUMSACCHARIN',
    Icons.grain_outlined,
    'saccharin_sodium',
    'Saccharin sodium is a high-intensity sweetener used to improve the taste and palatability of toothpaste.',
    'La sacarina sódica es un edulcorante intenso que mejora el sabor y la palatabilidad de la pasta dental.',
    'La saccharine sodique est un édulcorant intense qui améliore le goût et l’acceptabilité du dentifrice.',
    'Natriumsaccharin ist ein intensiver Süßstoff, der Geschmack und Akzeptanz der Zahnpasta verbessert.',
  );

  final flavouredToothpaste = ingredient(
    'FLAVOURED TOOTHPASTE',
    'PASTA DENTAL AROMATIZADA',
    'DENTIFRICE AROMATISÉ',
    'AROMATISIERTE ZAHNPASTA',
    Icons.science_outlined,
    'flavoured_toothpaste',
    'The flavoured toothpaste is produced after peppermint flavour and saccharin sodium are incorporated into the fluoridated base.',
    'La pasta dental aromatizada se obtiene al incorporar aroma de menta y sacarina sódica a la base fluorada.',
    'Le dentifrice aromatisé est obtenu après incorporation de l’arôme de menthe poivrée et de la saccharine sodique dans la base fluorée.',
    'Die aromatisierte Zahnpasta entsteht durch die Einarbeitung von Pfefferminzaroma und Natriumsaccharin in die fluoridhaltige Grundlage.',
  );

  final finalToothpaste = ingredient(
    'FINAL TOOTHPASTE',
    'PASTA DENTAL FINAL',
    'DENTIFRICE FINAL',
    'FERTIGE ZAHNPASTA',
    Icons.science_outlined,
    'final_toothpaste',
    'The final toothpaste is the completed formulation after final adjustment of its composition and consistency.',
    'La pasta dental final es la formulación terminada después de ajustar su composición y consistencia.',
    'Le dentifrice final est la formulation terminée après ajustement de sa composition et de sa consistance.',
    'Die fertige Zahnpasta ist die abgeschlossene Formulierung nach der endgültigen Einstellung von Zusammensetzung und Konsistenz.',
  );

  final step8 = ReactionStep(
    stepNumber: 8,
    heading: t(
      'FINAL ADJUSTMENT',
      'AJUSTE FINAL',
      'AJUSTEMENT FINAL',
      'ENDGÜLTIGE EINSTELLUNG',
    ),
    reactants: [water, flavouredToothpaste],
    product: finalToothpaste,
    learningData: StepLearningData(
      title: t(
        'FINAL FORMULATION ADJUSTMENT',
        'AJUSTE FINAL DE LA FORMULACIÓN',
        'AJUSTEMENT FINAL DE LA FORMULATION',
        'ENDGÜLTIGE FORMULIERUNGSEINSTELLUNG',
      ),
      animationType: StepAnimationType.adjust,
      description: t(
        'Purified water is used as required to adjust the formulation to its intended final quantity. The mixture should have the intended consistency and composition.',
        'Se añade agua purificada según sea necesario para ajustar la formulación a la cantidad final prevista. La mezcla debe alcanzar la consistencia y composición deseadas.',
        'De l’eau purifiée est ajoutée si nécessaire pour ajuster la formulation à la quantité finale prévue. Le mélange doit présenter la consistance et la composition souhaitées.',
        'Gereinigtes Wasser wird nach Bedarf zugegeben, um die vorgesehene Endmenge einzustellen. Die Mischung sollte die gewünschte Konsistenz und Zusammensetzung aufweisen.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'FINAL WATER ADJUSTMENT',
          'AJUSTE FINAL CON AGUA',
          'AJUSTEMENT FINAL AVEC DE L’EAU',
          'ENDGÜLTIGE WASSEREINSTELLUNG',
          'Water can be used as required for the final adjustment.',
          'Se puede añadir agua según sea necesario para el ajuste final.',
          'De l’eau peut être ajoutée selon les besoins pour l’ajustement final.',
          'Wasser kann bei Bedarf zur endgültigen Einstellung zugegeben werden.',
        ),
        point(
          Icons.tune_outlined,
          'CONSISTENCY',
          'CONSISTENCIA',
          'CONSISTANCE',
          'KONSISTENZ',
          'The final formulation should have the intended consistency.',
          'La formulación final debe tener la consistencia prevista.',
          'La formulation finale doit présenter la consistance souhaitée.',
          'Die fertige Formulierung sollte die vorgesehene Konsistenz aufweisen.',
        ),
        point(
          Icons.check_circle_outline,
          'FINISHED PRODUCT',
          'PRODUCTO TERMINADO',
          'PRODUIT FINI',
          'FERTIGPRODUKT',
          'The completed formulation is the final toothpaste product.',
          'La formulación terminada constituye el producto final.',
          'La formulation terminée constitue le produit final.',
          'Die abgeschlossene Formulierung ist das fertige Zahnpastaprodukt.',
        ),
      ],
    ),
    nextStep: null,
  );

  final step7 = ReactionStep(
    stepNumber: 7,
    heading: t(
      'FLAVOUR & SWEETENER',
      'AROMA Y EDULCORANTE',
      'ARÔME ET ÉDULCORANT',
      'AROMA UND SÜSSUNGSMITTEL',
    ),
    reactants: [peppermint, saccharin, fluoridatedBase],
    product: flavouredToothpaste,
    learningData: StepLearningData(
      title: t(
        'MAKING IT TASTE BETTER',
        'MEJORAR EL SABOR',
        'AMÉLIORER LE GOÛT',
        'DEN GESCHMACK VERBESSERN',
      ),
      animationType: StepAnimationType.flavour,
      description: t(
        'Flavour and sweetener improve the sensory properties of toothpaste. Peppermint provides flavour, while saccharin sodium provides sweetness.',
        'El aroma y el edulcorante mejoran las propiedades sensoriales de la pasta dental. La menta aporta aroma y la sacarina sódica aporta dulzor.',
        'L’arôme et l’édulcorant améliorent les propriétés sensorielles du dentifrice. La menthe apporte l’arôme et la saccharine sodique la douceur.',
        'Aroma und Süßungsmittel verbessern die sensorischen Eigenschaften der Zahnpasta. Pfefferminze liefert das Aroma, Natriumsaccharin die Süße.',
      ),
      learningPoints: [
        point(
          Icons.local_florist_outlined,
          'FLAVOUR',
          'AROMA',
          'ARÔME',
          'AROMA',
          'Peppermint provides the characteristic taste and aroma.',
          'La menta aporta el sabor y el aroma característicos.',
          'La menthe apporte le goût et l’arôme caractéristiques.',
          'Pfefferminze liefert den charakteristischen Geschmack und Geruch.',
        ),
        point(
          Icons.grain_outlined,
          'SWEETENER',
          'EDULCORANTE',
          'ÉDULCORANT',
          'SÜSSUNGSMITTEL',
          'Saccharin sodium provides sweetness without acting as a bulk ingredient.',
          'La sacarina sódica aporta dulzor sin actuar como ingrediente de volumen.',
          'La saccharine sodique apporte de la douceur sans servir d’ingrédient de charge.',
          'Natriumsaccharin sorgt für Süße, ohne als Füllstoff zu dienen.',
        ),
        point(
          Icons.sentiment_satisfied_alt_outlined,
          'ACCEPTABILITY',
          'ACEPTABILIDAD',
          'ACCEPTABILITÉ',
          'AKZEPTANZ',
          'Flavour and sweetness help make the product more pleasant to use.',
          'El aroma y el dulzor hacen que el producto resulte más agradable.',
          'L’arôme et la douceur rendent le produit plus agréable à utiliser.',
          'Aroma und Süße machen das Produkt angenehmer in der Anwendung.',
        ),
      ],
    ),
    nextStep: step8,
  );

  final step6 = ReactionStep(
    stepNumber: 6,
    heading: t(
      'ACTIVE INGREDIENT',
      'PRINCIPIO ACTIVO',
      'PRINCIPE ACTIF',
      'WIRKSTOFF',
    ),
    reactants: [fluoride, foamingBase],
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
        'Sodium fluoride is incorporated as the active ingredient. Fluoride toothpaste helps prevent dental caries when used appropriately.',
        'Se incorpora fluoruro de sodio como principio activo. La pasta dental con fluoruro ayuda a prevenir la caries cuando se utiliza adecuadamente.',
        'Le fluorure de sodium est incorporé comme principe actif. Le dentifrice fluoré contribue à prévenir les caries lorsqu’il est utilisé correctement.',
        'Natriumfluorid wird als Wirkstoff eingearbeitet. Fluoridhaltige Zahnpasta hilft bei sachgemäßer Anwendung, Karies vorzubeugen.',
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
          'Fluoride strengthens teeth and supports caries prevention.',
          'El fluoruro fortalece los dientes y ayuda a prevenir la caries.',
          'Le fluor renforce les dents et contribue à prévenir les caries.',
          'Fluorid stärkt die Zähne und unterstützt die Kariesvorbeugung.',
        ),
        point(
          Icons.balance_outlined,
          'UNIFORM DISTRIBUTION',
          'DISTRIBUCIÓN UNIFORME',
          'RÉPARTITION HOMOGÈNE',
          'GLEICHMÄSSIGE VERTEILUNG',
          'The active ingredient should be distributed throughout the base.',
          'El principio activo debe distribuirse por toda la base.',
          'Le principe actif doit être réparti dans toute la base.',
          'Der Wirkstoff sollte in der gesamten Grundlage verteilt sein.',
        ),
      ],
    ),
    nextStep: step7,
  );

  final step5 = ReactionStep(
    stepNumber: 5,
    heading: t(
      'MAKE FOAMING TOOTHPASTE BASE',
      'PREPARAR LA BASE DENTAL ESPUMANTE',
      'PRÉPARER LA BASE DENTIFRICE MOUSSANTE',
      'SCHAUMBILDENDE ZAHNPASTAGRUNDLAGE HERSTELLEN',
    ),
    reactants: [sls, abrasiveBase],
    product: foamingBase,
    learningData: StepLearningData(
      title: t(
        'WHY ADD SLS?',
        '¿POR QUÉ AÑADIR SLS?',
        'POURQUOI AJOUTER DU SLS ?',
        'WARUM SLS HINZUFÜGEN?',
      ),
      animationType: StepAnimationType.incorporate,
      description: t(
        'Sodium lauryl sulfate is a surfactant that helps produce foam and spread the formulation throughout the mouth during brushing.',
        'El laurilsulfato de sodio es un tensioactivo que ayuda a producir espuma y distribuir la formulación por la boca durante el cepillado.',
        'Le laurylsulfate de sodium est un tensioactif qui aide à produire de la mousse et à répartir la formulation dans la bouche pendant le brossage.',
        'Natriumlaurylsulfat ist ein Tensid, das Schaumbildung und Verteilung der Formulierung im Mund während des Zähneputzens unterstützt.',
      ),
      learningPoints: [
        point(
          Icons.bubble_chart_outlined,
          'FOAMING',
          'FORMACIÓN DE ESPUMA',
          'MOUSSAGE',
          'SCHAUMBILDUNG',
          'SLS helps produce foam during brushing.',
          'El SLS ayuda a producir espuma durante el cepillado.',
          'Le SLS aide à produire de la mousse pendant le brossage.',
          'SLS unterstützt die Schaumbildung beim Zähneputzen.',
        ),
        point(
          Icons.waves_outlined,
          'SURFACTANT',
          'TENSIOACTIVO',
          'TENSIOACTIF',
          'TENSID',
          'It helps with wetting and spreading.',
          'Ayuda a humedecer y distribuir la formulación.',
          'Il facilite le mouillage et la répartition.',
          'Es unterstützt die Benetzung und Verteilung.',
        ),
        point(
          Icons.brush_outlined,
          'BRUSHING EXPERIENCE',
          'EXPERIENCIA DE CEPILLADO',
          'EXPÉRIENCE DE BROSSAGE',
          'PUTZERLEBNIS',
          'Foam contributes to the familiar toothpaste experience.',
          'La espuma contribuye a la experiencia habitual de uso de la pasta dental.',
          'La mousse contribue à l’expérience habituelle du dentifrice.',
          'Schaum trägt zum gewohnten Zahnpasta-Erlebnis bei.',
        ),
      ],
    ),
    nextStep: step6,
  );

  final step4 = ReactionStep(
    stepNumber: 4,
    heading: t(
      'MAKE ABRASIVE TOOTHPASTE BASE',
      'PREPARAR LA BASE DENTAL ABRASIVA',
      'PRÉPARER LA BASE DENTIFRICE ABRASIVE',
      'ABRASIVE ZAHNPASTAGRUNDLAGE HERSTELLEN',
    ),
    reactants: [calciumCarbonate, vehicleBase],
    product: abrasiveBase,
    learningData: StepLearningData(
      title: t(
        'ADDING THE ABRASIVE',
        'ADICIÓN DEL ABRASIVO',
        'AJOUT DE L’ABRASIF',
        'ZUGABE DES ABRASIVMITTELS',
      ),
      animationType: StepAnimationType.incorporate,
      description: t(
        'Calcium carbonate is incorporated into the vehicle. Abrasive particles help remove deposits from tooth surfaces during brushing.',
        'Se incorpora carbonato de calcio al vehículo. Las partículas abrasivas ayudan a eliminar depósitos de la superficie dental durante el cepillado.',
        'Le carbonate de calcium est incorporé au véhicule. Les particules abrasives aident à éliminer les dépôts de la surface des dents pendant le brossage.',
        'Calciumcarbonat wird in die Trägergrundlage eingearbeitet. Abrasivpartikel helfen, beim Zähneputzen Ablagerungen von den Zahnoberflächen zu entfernen.',
      ),
      learningPoints: [
        point(
          Icons.grain_outlined,
          'ABRASIVE',
          'ABRASIVO',
          'ABRASIF',
          'ABRASIVMITTEL',
          'Calcium carbonate provides controlled abrasive action.',
          'El carbonato de calcio proporciona una acción abrasiva controlada.',
          'Le carbonate de calcium assure une action abrasive contrôlée.',
          'Calciumcarbonat sorgt für eine kontrollierte abrasive Wirkung.',
        ),
        point(
          Icons.cleaning_services_outlined,
          'CLEANING',
          'LIMPIEZA',
          'NETTOYAGE',
          'REINIGUNG',
          'Abrasive particles help remove deposits during brushing.',
          'Las partículas abrasivas ayudan a eliminar depósitos durante el cepillado.',
          'Les particules abrasives aident à éliminer les dépôts pendant le brossage.',
          'Abrasivpartikel helfen, Ablagerungen beim Zähneputzen zu entfernen.',
        ),
        point(
          Icons.tune_outlined,
          'CONTROLLED ACTION',
          'ACCIÓN CONTROLADA',
          'ACTION CONTRÔLÉE',
          'KONTROLLIERTE WIRKUNG',
          'The abrasive should be distributed uniformly throughout the base.',
          'El abrasivo debe distribuirse uniformemente por toda la base.',
          'L’abrasif doit être réparti uniformément dans toute la base.',
          'Das Abrasivmittel sollte gleichmäßig in der gesamten Grundlage verteilt sein.',
        ),
      ],
    ),
    nextStep: step5,
  );

  final step3 = ReactionStep(
    stepNumber: 3,
    heading: t(
      'MAKE VEHICLE BASE',
      'PREPARAR LA BASE VEHÍCULO',
      'PRÉPARER LA BASE VÉHICULAIRE',
      'TRÄGERGRUNDLAGE HERSTELLEN',
    ),
    reactants: [humectantBase, binderSolution],
    product: vehicleBase,
    learningData: StepLearningData(
      title: t(
        'BUILDING THE VEHICLE',
        'PREPARACIÓN DEL VEHÍCULO',
        'CONSTITUTION DU VÉHICULE',
        'AUFBAU DER TRÄGERGRUNDLAGE',
      ),
      animationType: StepAnimationType.mix,
      description: t(
        'The humectant phase and hydrated binder solution are combined to create the vehicle that carries the remaining toothpaste ingredients.',
        'La fase humectante y la solución aglutinante hidratada se combinan para crear el vehículo que incorpora los demás ingredientes.',
        'La phase humectante et la solution de liant hydraté sont associées pour former le véhicule qui accueillera les autres ingrédients.',
        'Die Feuchthaltephase und die hydratisierte Bindemittellösung werden kombiniert, um die Trägergrundlage für die übrigen Zahnpastabestandteile herzustellen.',
      ),
      learningPoints: [
        point(
          Icons.merge_type,
          'COMBINATION',
          'COMBINACIÓN',
          'ASSOCIATION',
          'KOMBINATION',
          'The two prepared phases are brought together.',
          'Se combinan las dos fases preparadas.',
          'Les deux phases préparées sont réunies.',
          'Die beiden vorbereiteten Phasen werden zusammengeführt.',
        ),
        point(
          Icons.science_outlined,
          'VEHICLE',
          'VEHÍCULO',
          'VÉHICULE',
          'TRÄGERGRUNDLAGE',
          'The vehicle forms the main base of the formulation.',
          'El vehículo constituye la base principal de la formulación.',
          'Le véhicule constitue la base principale de la formulation.',
          'Die Trägergrundlage bildet die Hauptbasis der Formulierung.',
        ),
        point(
          Icons.layers_outlined,
          'CARRIES INGREDIENTS',
          'INCORPORA INGREDIENTES',
          'ACCUEIL DES INGRÉDIENTS',
          'TRÄGT INHALTSSTOFFE',
          'The vehicle provides a medium for later ingredients.',
          'El vehículo proporciona un medio para los ingredientes posteriores.',
          'Le véhicule fournit un milieu pour les ingrédients ajoutés ensuite.',
          'Die Trägergrundlage dient als Medium für die später zugegebenen Inhaltsstoffe.',
        ),
      ],
    ),
    nextStep: step4,
  );

  final step2 = ReactionStep(
    stepNumber: 2,
    heading: t(
      'MAKE HYDRATED BINDER SOLUTION',
      'PREPARAR LA SOLUCIÓN AGLUTINANTE HIDRATADA',
      'PRÉPARER LA SOLUTION DE LIANT HYDRATÉ',
      'HYDRATISIERTE BINDEMITTELLÖSUNG HERSTELLEN',
    ),
    reactants: [cmc, water],
    product: binderSolution,
    learningData: StepLearningData(
      title: t(
        'WHY HYDRATE THE BINDER?',
        '¿POR QUÉ HIDRATAR EL AGLUTINANTE?',
        'POURQUOI HYDRATER LE LIANT ?',
        'WARUM DAS BINDEMITTEL HYDRATISIEREN?',
      ),
      animationType: StepAnimationType.hydrate,
      description: t(
        'Sodium carboxymethylcellulose is hydrated in purified water so the polymer can swell and develop its thickening and binding properties.',
        'La carboximetilcelulosa sódica se hidrata en agua purificada para que el polímero se hinche y desarrolle sus propiedades espesantes y aglutinantes.',
        'La carboxyméthylcellulose sodique est hydratée dans l’eau purifiée afin que le polymère gonfle et développe ses propriétés épaississantes et liantes.',
        'Natriumcarboxymethylcellulose wird in gereinigtem Wasser hydratisiert, damit das Polymer quellen und seine verdickenden und bindenden Eigenschaften entwickeln kann.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'HYDRATION',
          'HIDRATACIÓN',
          'HYDRATATION',
          'HYDRATISIERUNG',
          'Water allows the polymer to hydrate and swell.',
          'El agua permite que el polímero se hidrate y se hinche.',
          'L’eau permet au polymère de s’hydrater et de gonfler.',
          'Wasser ermöglicht die Hydratisierung und Quellung des Polymers.',
        ),
        point(
          Icons.expand_outlined,
          'SWELLING',
          'HINCHAMIENTO',
          'GONFLEMENT',
          'QUELLUNG',
          'The hydrated polymer develops its functional structure.',
          'El polímero hidratado desarrolla su estructura funcional.',
          'Le polymère hydraté développe sa structure fonctionnelle.',
          'Das hydratisierte Polymer entwickelt seine funktionelle Struktur.',
        ),
        point(
          Icons.layers_outlined,
          'THICKENING',
          'ESPESAMIENTO',
          'ÉPAISSISSEMENT',
          'VERDICKUNG',
          'The hydrated binder contributes to viscosity.',
          'El aglutinante hidratado contribuye a la viscosidad.',
          'Le liant hydraté contribue à la viscosité.',
          'Das hydratisierte Bindemittel trägt zur Viskosität bei.',
        ),
      ],
    ),
    nextStep: step3,
  );

  final step1 = ReactionStep(
    stepNumber: 1,
    heading: t(
      'MAKE HUMECTANT BASE',
      'PREPARAR LA BASE HUMECTANTE',
      'PRÉPARER LA BASE HUMECTANTE',
      'FEUCHTHALTEGRUNDLAGE HERSTELLEN',
    ),
    reactants: [glycerin, sorbitol],
    product: humectantBase,
    learningData: StepLearningData(
      title: t(
        'WHY DO WE NEED HUMECTANTS?',
        '¿POR QUÉ NECESITAMOS HUMECTANTES?',
        'POURQUOI AVONS-NOUS BESOIN D’HUMECTANTS ?',
        'WARUM BRAUCHEN WIR FEUCHTHALTEMITTEL?',
      ),
      animationType: StepAnimationType.combine,
      description: t(
        'Humectants help retain water in toothpaste, reduce drying during storage and use, and contribute to the desired texture.',
        'Los humectantes ayudan a retener el agua en la pasta dental, reducen el secado durante el almacenamiento y el uso y contribuyen a la textura deseada.',
        'Les humectants aident à retenir l’eau dans le dentifrice, limitent le dessèchement pendant le stockage et l’utilisation et contribuent à la texture souhaitée.',
        'Feuchthaltemittel binden Wasser in der Zahnpasta, verringern das Austrocknen während Lagerung und Gebrauch und tragen zur gewünschten Konsistenz bei.',
      ),
      learningPoints: [
        point(
          Icons.water_drop_outlined,
          'RETAINS MOISTURE',
          'RETIENE LA HUMEDAD',
          'RETIENT L’HUMIDITÉ',
          'BINDET FEUCHTIGKEIT',
          'Humectants help hold water within the formulation.',
          'Los humectantes ayudan a retener el agua en la formulación.',
          'Les humectants aident à retenir l’eau dans la formulation.',
          'Feuchthaltemittel helfen, Wasser in der Formulierung zu binden.',
        ),
        point(
          Icons.shield_outlined,
          'PREVENTS DRYING',
          'EVITA EL SECADO',
          'LIMITE LE DESSÈCHEMENT',
          'VERHINDERT AUSTROCKNEN',
          'They help keep the toothpaste from becoming dry.',
          'Ayudan a evitar que la pasta dental se seque.',
          'Ils aident à empêcher le dentifrice de sécher.',
          'Sie helfen, das Austrocknen der Zahnpasta zu verhindern.',
        ),
        point(
          Icons.texture_outlined,
          'IMPROVES CONSISTENCY',
          'MEJORA LA CONSISTENCIA',
          'AMÉLIORE LA CONSISTANCE',
          'VERBESSERT DIE KONSISTENZ',
          'They contribute to the texture and feel of the toothpaste.',
          'Contribuyen a la textura y sensación de la pasta dental.',
          'Ils contribuent à la texture et à la sensation du dentifrice.',
          'Sie tragen zur Textur und zum Mundgefühl der Zahnpasta bei.',
        ),
      ],
    ),
    nextStep: step2,
  );

  return [step1, step2, step3, step4, step5, step6, step7, step8];
}

final List<ReactionStep> toothpasteSteps = toothpasteStepsFor(
  const Locale('en'),
);
