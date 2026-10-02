import 'package:flutter/material.dart';
import 'package:formula/models/step_learning_data.dart';
import 'package:formula/models/step_quantity.dart';

class IngredientData {
  final String name;
  final IconData icon;
  final String modelPath;
  final String description;

  const IngredientData({
    required this.name,
    required this.icon,
    required this.modelPath,
    required this.description,
  });
}

class ReactionStep {
  final int stepNumber;
  final String heading;
  final List<IngredientData> reactants;
  final IngredientData product;
  final StepLearningData learningData;
  final List<StepQuantity> quantities;
  final ReactionStep? nextStep;

  const ReactionStep({
    required this.stepNumber,
    required this.heading,
    required this.reactants,
    required this.product,
    required this.learningData,
    this.quantities = const [],
    this.nextStep,
  });
}
