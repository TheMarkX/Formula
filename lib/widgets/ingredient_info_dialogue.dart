import 'package:flutter/material.dart';

import 'package:formula/models/reaction_step.dart';
import 'package:formula/widgets/ingredient_model_viewer_host.dart';

class IngredientInfoDialog {
  IngredientInfoDialog._();

  static void show(BuildContext context, IngredientData ingredient) {
    IngredientModelViewerController.show(ingredient);
  }
}
