import 'package:flutter/material.dart';

import 'package:formula/models/glossary_entry.dart';

class LocalizedGlossaryEntry {
  final String term;
  final String definition;
  final String example;

  const LocalizedGlossaryEntry({
    required this.term,
    required this.definition,
    required this.example,
  });
}

const Map<String, List<LocalizedGlossaryEntry>> localizedGlossaryEntries = {
  'en': [
    LocalizedGlossaryEntry(
      term: 'ABRASIVE',
      definition: 'A substance that helps mechanically remove deposits, stains, or other material from a surface through gentle friction.',
      example: 'Calcium carbonate can act as an abrasive in toothpaste and toothpowder.',
    ),
    LocalizedGlossaryEntry(
      term: 'ACTIVE INGREDIENT',
      definition: 'An ingredient responsible for producing the intended therapeutic, preventive, or functional effect of a formulation.',
      example: 'Sodium fluoride is an active ingredient used in some toothpaste formulations to help prevent dental caries.',
    ),
    LocalizedGlossaryEntry(
      term: 'BINDER',
      definition: 'A substance used to help hold particles together and provide cohesion to a formulation.',
      example: 'A binder may be used in pharmaceutical granules to help particles remain together.',
    ),
    LocalizedGlossaryEntry(
      term: 'BUFFER',
      definition: 'A substance or combination of substances that helps resist changes in pH when small amounts of acid or base are added.',
      example: 'A buffer can help maintain the desired pH of a pharmaceutical preparation.',
    ),
    LocalizedGlossaryEntry(
      term: 'CHELATING AGENT',
      definition: 'A substance that can bind certain metal ions and form a stable complex with them.',
      example: 'A chelating agent may be included in a formulation to bind trace metal ions that could affect stability.',
    ),
    LocalizedGlossaryEntry(
      term: 'CO-SOLVENT',
      definition: 'A solvent used together with another solvent to improve the dissolution of an ingredient.',
      example: 'Ethanol may be used as a co-solvent to help dissolve certain ingredients that have limited water solubility.',
    ),
    LocalizedGlossaryEntry(
      term: 'DESICCANT',
      definition: 'A substance used to absorb or reduce moisture in a container or packaging environment.',
      example: 'A desiccant packet may be placed inside suitable packaging to help protect a moisture-sensitive product.',
    ),
    LocalizedGlossaryEntry(
      term: 'EXCIPIENT',
      definition: 'An inactive ingredient included in a pharmaceutical formulation to provide useful physical, chemical, or manufacturing properties.',
      example: 'A pharmaceutical tablet may contain excipients that help with binding, flow, lubrication, or disintegration.',
    ),
    LocalizedGlossaryEntry(
      term: 'FLAVOURING AGENT',
      definition: 'A substance added to improve or modify the taste or aroma of a pharmaceutical or oral-care preparation.',
      example: 'Peppermint flavour may be added to toothpaste to provide a characteristic taste and aroma.',
    ),
    LocalizedGlossaryEntry(
      term: 'GEOMETRIC DILUTION',
      definition: 'A mixing technique in which a small quantity of one ingredient is gradually combined with approximately equal portions of a larger quantity of another ingredient.',
      example: 'A small amount of an active ingredient can be mixed with a small portion of powder, followed by progressively larger portions of the remaining powder.',
    ),
    LocalizedGlossaryEntry(
      term: 'HUMECTANT',
      definition: 'A substance that helps attract and retain moisture, helping to prevent a formulation from becoming excessively dry.',
      example: 'Glycerin is commonly used as a humectant in toothpaste formulations.',
    ),
    LocalizedGlossaryEntry(
      term: 'LEVIGATION',
      definition: 'The process of reducing the particle size of a solid by triturating it with a small amount of a suitable liquid or levigating agent.',
      example: 'A poorly soluble powder may be levigated with a suitable liquid before incorporation into a preparation.',
    ),
    LocalizedGlossaryEntry(
      term: 'PALATABILITY',
      definition: 'The degree to which a preparation is pleasant or acceptable in taste, smell, and overall sensory characteristics.',
      example: 'Sweeteners and flavouring agents can improve the palatability of an oral preparation.',
    ),
    LocalizedGlossaryEntry(
      term: 'SURFACTANT',
      definition: 'A substance that reduces surface tension and can improve wetting, spreading, emulsification, or foaming.',
      example: 'A surfactant may help a toothpaste spread more easily and contribute to foam formation during brushing.',
    ),
    LocalizedGlossaryEntry(
      term: 'VISCOSITY',
      definition: 'A measure of a fluid’s resistance to flow.',
      example: 'Increasing the concentration of certain thickening agents can increase the viscosity of a liquid preparation.',
    ),
    LocalizedGlossaryEntry(
      term: 'WETTING AGENT',
      definition: 'A substance that helps a liquid spread over or penetrate the surface of a solid by reducing interfacial tension.',
      example: 'A wetting agent can help water spread over poorly wettable powder particles.',
    ),
  ],
  'es': [
    LocalizedGlossaryEntry(
      term: 'ABRASIVO',
      definition: 'Sustancia que ayuda a eliminar mecánicamente depósitos, manchas u otros materiales de una superficie mediante una fricción suave.',
      example: 'El carbonato de calcio puede actuar como abrasivo en la pasta dental y el polvo dentífrico.',
    ),
    LocalizedGlossaryEntry(
      term: 'PRINCIPIO ACTIVO',
      definition: 'Ingrediente responsable de producir el efecto terapéutico, preventivo o funcional previsto de una formulación.',
      example: 'El fluoruro de sodio es un principio activo utilizado en algunas pastas dentales para ayudar a prevenir la caries dental.',
    ),
    LocalizedGlossaryEntry(
      term: 'AGLUTINANTE',
      definition: 'Sustancia que ayuda a mantener unidas las partículas y aporta cohesión a una formulación.',
      example: 'Se puede utilizar un aglutinante en los granulados farmacéuticos para mantener unidas las partículas.',
    ),
    LocalizedGlossaryEntry(
      term: 'TAMPÓN',
      definition: 'Sustancia o combinación de sustancias que ayuda a resistir los cambios de pH cuando se añaden pequeñas cantidades de ácido o base.',
      example: 'Una solución tampón puede ayudar a mantener el pH deseado de una preparación farmacéutica.',
    ),
    LocalizedGlossaryEntry(
      term: 'AGENTE QUELANTE',
      definition: 'Sustancia capaz de unirse a determinados iones metálicos y formar con ellos un complejo estable.',
      example: 'Un agente quelante puede incorporarse para captar trazas de iones metálicos que podrían afectar a la estabilidad.',
    ),
    LocalizedGlossaryEntry(
      term: 'COSOLVENTE',
      definition: 'Disolvente que se utiliza junto con otro para mejorar la disolución de un ingrediente.',
      example: 'El etanol puede utilizarse como cosolvente para disolver ciertos ingredientes con solubilidad limitada en agua.',
    ),
    LocalizedGlossaryEntry(
      term: 'DESECANTE',
      definition: 'Sustancia utilizada para absorber o reducir la humedad dentro de un recipiente o entorno de envasado.',
      example: 'Puede colocarse un sobre desecante en un envase adecuado para proteger un producto sensible a la humedad.',
    ),
    LocalizedGlossaryEntry(
      term: 'EXCIPIENTE',
      definition: 'Ingrediente inactivo incluido en una formulación farmacéutica para aportar propiedades físicas, químicas o de fabricación útiles.',
      example: 'Un comprimido puede contener excipientes que facilitan la aglutinación, el flujo, la lubricación o la desintegración.',
    ),
    LocalizedGlossaryEntry(
      term: 'AROMATIZANTE',
      definition: 'Sustancia añadida para mejorar o modificar el sabor o el aroma de una preparación farmacéutica o de cuidado bucal.',
      example: 'Se puede añadir aroma de menta a la pasta dental para proporcionar un sabor y aroma característicos.',
    ),
    LocalizedGlossaryEntry(
      term: 'DILUCIÓN GEOMÉTRICA',
      definition: 'Técnica de mezclado en la que una pequeña cantidad de un ingrediente se combina gradualmente con porciones aproximadamente iguales de una cantidad mayor de otro ingrediente.',
      example: 'Se puede mezclar una pequeña cantidad de principio activo con una porción de polvo y añadir después porciones progresivamente mayores del polvo restante.',
    ),
    LocalizedGlossaryEntry(
      term: 'HUMECTANTE',
      definition: 'Sustancia que ayuda a atraer y retener la humedad, evitando que una formulación se seque excesivamente.',
      example: 'La glicerina se utiliza habitualmente como humectante en las formulaciones de pasta dental.',
    ),
    LocalizedGlossaryEntry(
      term: 'LEVIGACIÓN',
      definition: 'Proceso de reducción del tamaño de partícula de un sólido mediante trituración con una pequeña cantidad de líquido adecuado o agente levigante.',
      example: 'Un polvo poco soluble puede levigarse con un líquido adecuado antes de incorporarlo a una preparación.',
    ),
    LocalizedGlossaryEntry(
      term: 'PALATABILIDAD',
      definition: 'Grado en que una preparación resulta agradable o aceptable por su sabor, olor y características sensoriales generales.',
      example: 'Los edulcorantes y aromatizantes pueden mejorar la palatabilidad de una preparación oral.',
    ),
    LocalizedGlossaryEntry(
      term: 'TENSIOACTIVO',
      definition: 'Sustancia que reduce la tensión superficial y puede mejorar la humectación, la dispersión, la emulsificación o la formación de espuma.',
      example: 'Un tensioactivo puede facilitar la distribución de la pasta dental y contribuir a la formación de espuma durante el cepillado.',
    ),
    LocalizedGlossaryEntry(
      term: 'VISCOSIDAD',
      definition: 'Medida de la resistencia de un fluido a fluir.',
      example: 'Aumentar la concentración de ciertos espesantes puede incrementar la viscosidad de una preparación líquida.',
    ),
    LocalizedGlossaryEntry(
      term: 'AGENTE HUMECTANTE',
      definition: 'Sustancia que ayuda a un líquido a extenderse sobre la superficie de un sólido o penetrarla al reducir la tensión interfacial.',
      example: 'Un agente humectante puede ayudar al agua a extenderse sobre partículas de polvo difíciles de humedecer.',
    ),
  ],
  'fr': [
    LocalizedGlossaryEntry(
      term: 'ABRASIF',
      definition: 'Substance qui aide à éliminer mécaniquement les dépôts, les taches ou d’autres matières d’une surface par une friction douce.',
      example: 'Le carbonate de calcium peut servir d’abrasif dans le dentifrice et la poudre dentifrice.',
    ),
    LocalizedGlossaryEntry(
      term: 'PRINCIPE ACTIF',
      definition: 'Ingrédient responsable de l’effet thérapeutique, préventif ou fonctionnel recherché dans une formulation.',
      example: 'Le fluorure de sodium est un principe actif utilisé dans certains dentifrices pour aider à prévenir les caries dentaires.',
    ),
    LocalizedGlossaryEntry(
      term: 'LIANT',
      definition: 'Substance qui aide à maintenir les particules ensemble et à assurer la cohésion d’une formulation.',
      example: 'Un liant peut être utilisé dans les granulés pharmaceutiques pour maintenir les particules ensemble.',
    ),
    LocalizedGlossaryEntry(
      term: 'TAMPON',
      definition: 'Substance ou association de substances qui aide à limiter les variations de pH lors de l’ajout de petites quantités d’acide ou de base.',
      example: 'Une solution tampon peut aider à maintenir le pH souhaité d’une préparation pharmaceutique.',
    ),
    LocalizedGlossaryEntry(
      term: 'AGENT CHÉLATANT',
      definition: 'Substance capable de se lier à certains ions métalliques et de former avec eux un complexe stable.',
      example: 'Un agent chélatant peut être incorporé pour fixer des traces d’ions métalliques susceptibles d’affecter la stabilité.',
    ),
    LocalizedGlossaryEntry(
      term: 'COSOLVANT',
      definition: 'Solvant utilisé avec un autre solvant pour améliorer la dissolution d’un ingrédient.',
      example: 'L’éthanol peut être utilisé comme cosolvant pour dissoudre certains ingrédients peu solubles dans l’eau.',
    ),
    LocalizedGlossaryEntry(
      term: 'DESSICCANT',
      definition: 'Substance utilisée pour absorber ou réduire l’humidité dans un récipient ou un environnement d’emballage.',
      example: 'Un sachet dessiccant peut être placé dans un emballage adapté pour protéger un produit sensible à l’humidité.',
    ),
    LocalizedGlossaryEntry(
      term: 'EXCIPIENT',
      definition: 'Ingrédient inactif ajouté à une formulation pharmaceutique pour lui conférer des propriétés physiques, chimiques ou de fabrication utiles.',
      example: 'Un comprimé peut contenir des excipients facilitant la liaison, l’écoulement, la lubrification ou la désintégration.',
    ),
    LocalizedGlossaryEntry(
      term: 'ARÔME',
      definition: 'Substance ajoutée pour améliorer ou modifier le goût ou l’odeur d’une préparation pharmaceutique ou de soin buccal.',
      example: 'Un arôme de menthe poivrée peut être ajouté au dentifrice pour lui donner un goût et une odeur caractéristiques.',
    ),
    LocalizedGlossaryEntry(
      term: 'DILUTION GÉOMÉTRIQUE',
      definition: 'Technique de mélange consistant à combiner progressivement une petite quantité d’un ingrédient avec des portions approximativement égales d’une quantité plus importante d’un autre ingrédient.',
      example: 'Une petite quantité de principe actif peut être mélangée à une petite portion de poudre, puis à des portions progressivement plus grandes de la poudre restante.',
    ),
    LocalizedGlossaryEntry(
      term: 'HUMECTANT',
      definition: 'Substance qui aide à attirer et à retenir l’humidité afin d’éviter qu’une formulation ne devienne excessivement sèche.',
      example: 'La glycérine est couramment utilisée comme humectant dans les formulations de dentifrice.',
    ),
    LocalizedGlossaryEntry(
      term: 'LÉVIGATION',
      definition: 'Procédé de réduction de la taille des particules d’un solide par trituration avec une petite quantité de liquide approprié ou d’agent de lévigation.',
      example: 'Une poudre peu soluble peut être lévigée avec un liquide approprié avant son incorporation dans une préparation.',
    ),
    LocalizedGlossaryEntry(
      term: 'PALATABILITÉ',
      definition: 'Degré auquel une préparation est agréable ou acceptable par son goût, son odeur et ses caractéristiques sensorielles générales.',
      example: 'Les édulcorants et les arômes peuvent améliorer la palatabilité d’une préparation orale.',
    ),
    LocalizedGlossaryEntry(
      term: 'TENSIOACTIF',
      definition: 'Substance qui réduit la tension superficielle et peut améliorer le mouillage, l’étalement, l’émulsification ou la formation de mousse.',
      example: 'Un tensioactif peut faciliter l’étalement du dentifrice et contribuer à la formation de mousse pendant le brossage.',
    ),
    LocalizedGlossaryEntry(
      term: 'VISCOSITÉ',
      definition: 'Mesure de la résistance d’un fluide à l’écoulement.',
      example: 'Une augmentation de la concentration de certains épaississants peut accroître la viscosité d’une préparation liquide.',
    ),
    LocalizedGlossaryEntry(
      term: 'AGENT MOUILLANT',
      definition: 'Substance qui aide un liquide à s’étaler sur la surface d’un solide ou à y pénétrer en réduisant la tension interfaciale.',
      example: 'Un agent mouillant peut aider l’eau à s’étaler sur des particules de poudre difficiles à mouiller.',
    ),
  ],
  'de': [
    LocalizedGlossaryEntry(
      term: 'SCHLEIFMITTEL',
      definition: 'Ein Stoff, der Ablagerungen, Flecken oder andere Materialien durch sanfte Reibung mechanisch von einer Oberfläche entfernt.',
      example: 'Calciumcarbonat kann in Zahnpasta und Zahnpulver als Schleifmittel dienen.',
    ),
    LocalizedGlossaryEntry(
      term: 'WIRKSTOFF',
      definition: 'Ein Inhaltsstoff, der die beabsichtigte therapeutische, vorbeugende oder funktionelle Wirkung einer Formulierung hervorruft.',
      example: 'Natriumfluorid ist ein Wirkstoff, der in manchen Zahnpasten zur Vorbeugung von Zahnkaries eingesetzt wird.',
    ),
    LocalizedGlossaryEntry(
      term: 'BINDEMITTEL',
      definition: 'Ein Stoff, der Partikel zusammenhält und den Zusammenhalt einer Formulierung verbessert.',
      example: 'In pharmazeutischen Granulaten kann ein Bindemittel verwendet werden, damit die Partikel zusammenhalten.',
    ),
    LocalizedGlossaryEntry(
      term: 'PUFFERSUBSTANZ',
      definition: 'Ein Stoff oder Stoffgemisch, das Änderungen des pH-Werts bei Zugabe kleiner Mengen Säure oder Base begrenzt.',
      example: 'Ein Puffer kann helfen, den gewünschten pH-Wert einer pharmazeutischen Zubereitung aufrechtzuerhalten.',
    ),
    LocalizedGlossaryEntry(
      term: 'KOMPLEXBILDNER',
      definition: 'Ein Stoff, der bestimmte Metallionen bindet und mit ihnen einen stabilen Komplex bildet.',
      example: 'Ein Komplexbildner kann zugesetzt werden, um Spuren von Metallionen zu binden, die die Stabilität beeinträchtigen könnten.',
    ),
    LocalizedGlossaryEntry(
      term: 'COSOLVENS',
      definition: 'Ein Lösungsmittel, das zusammen mit einem weiteren Lösungsmittel verwendet wird, um die Auflösung eines Inhaltsstoffs zu verbessern.',
      example: 'Ethanol kann als Cosolvens dienen, um bestimmte Inhaltsstoffe mit geringer Wasserlöslichkeit zu lösen.',
    ),
    LocalizedGlossaryEntry(
      term: 'TROCKNUNGSMITTEL',
      definition: 'Ein Stoff, der Feuchtigkeit in einem Behälter oder einer Verpackungsumgebung aufnimmt oder reduziert.',
      example: 'Ein Trockenmittelbeutel kann in einer geeigneten Verpackung ein feuchtigkeitsempfindliches Produkt schützen.',
    ),
    LocalizedGlossaryEntry(
      term: 'HILFSSTOFF',
      definition: 'Ein inaktiver Inhaltsstoff, der einer pharmazeutischen Formulierung nützliche physikalische, chemische oder herstellungstechnische Eigenschaften verleiht.',
      example: 'Eine Tablette kann Hilfsstoffe enthalten, die Bindung, Fließfähigkeit, Schmierung oder Zerfall unterstützen.',
    ),
    LocalizedGlossaryEntry(
      term: 'AROMASTOFF',
      definition: 'Ein Stoff, der den Geschmack oder Geruch eines Arzneimittels oder Mundpflegeprodukts verbessert oder verändert.',
      example: 'Pfefferminzaroma kann Zahnpasta zugesetzt werden, um ihr einen charakteristischen Geschmack und Geruch zu verleihen.',
    ),
    LocalizedGlossaryEntry(
      term: 'GEOMETRISCHE VERDÜNNUNG',
      definition: 'Mischtechnik, bei der eine kleine Menge eines Inhaltsstoffs schrittweise mit ungefähr gleich großen Portionen einer größeren Menge eines anderen Inhaltsstoffs vermischt wird.',
      example: 'Eine kleine Menge Wirkstoff kann zunächst mit einer kleinen Pulverportion und anschließend mit zunehmend größeren Portionen des restlichen Pulvers vermischt werden.',
    ),
    LocalizedGlossaryEntry(
      term: 'FEUCHTHALTMITTEL',
      definition: 'Ein Stoff, der Feuchtigkeit anzieht und bindet und dadurch ein übermäßiges Austrocknen der Formulierung verhindert.',
      example: 'Glycerin wird häufig als Feuchthaltemittel in Zahnpastaformulierungen verwendet.',
    ),
    LocalizedGlossaryEntry(
      term: 'LEVIGATION',
      definition: 'Verkleinerung der Partikel eines Feststoffs durch Verreiben mit einer kleinen Menge einer geeigneten Flüssigkeit oder eines Levigiermittels.',
      example: 'Ein schwer lösliches Pulver kann vor der Einarbeitung in eine Zubereitung mit einer geeigneten Flüssigkeit angerieben werden.',
    ),
    LocalizedGlossaryEntry(
      term: 'GESCHMACKSAKZEPTANZ',
      definition: 'Maß dafür, wie angenehm oder akzeptabel eine Zubereitung hinsichtlich Geschmack, Geruch und allgemeiner sensorischer Eigenschaften ist.',
      example: 'Süßungsmittel und Aromastoffe können die Akzeptanz einer oralen Zubereitung verbessern.',
    ),
    LocalizedGlossaryEntry(
      term: 'TENSID',
      definition: 'Ein Stoff, der die Oberflächenspannung reduziert und Benetzung, Verteilung, Emulgierung oder Schaumbildung verbessern kann.',
      example: 'Ein Tensid kann die Verteilung von Zahnpasta erleichtern und beim Zähneputzen zur Schaumbildung beitragen.',
    ),
    LocalizedGlossaryEntry(
      term: 'VISKOSITÄT',
      definition: 'Maß für den Fließwiderstand einer Flüssigkeit.',
      example: 'Eine höhere Konzentration bestimmter Verdickungsmittel kann die Viskosität einer flüssigen Zubereitung erhöhen.',
    ),
    LocalizedGlossaryEntry(
      term: 'NETZMITTEL',
      definition: 'Ein Stoff, der durch Verringerung der Grenzflächenspannung die Ausbreitung oder das Eindringen einer Flüssigkeit auf beziehungsweise in einen Feststoff erleichtert.',
      example: 'Ein Netzmittel kann dazu beitragen, dass sich Wasser auf schwer benetzbaren Pulverpartikeln ausbreitet.',
    ),
  ],
};

List<GlossaryEntry> getGlossaryEntries(Locale locale) {
  final entries =
      localizedGlossaryEntries[locale.languageCode] ??
      localizedGlossaryEntries['en']!;

  return entries
      .map(
        (entry) => GlossaryEntry(
          term: entry.term,
          definition: entry.definition,
          example: entry.example,
        ),
      )
      .toList(growable: false);
}
