import 'package:flutter/material.dart';

enum StepAnimationType {
  combine,
  hydrate,
  mix,
  incorporate,
  activate,
  flavour,
  adjust,
  sieve,
}

class LearningPoint {
  final IconData icon;
  final String title;
  final String description;

  const LearningPoint({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class StepLearningData {
  final String title;
  final String description;
  final StepAnimationType animationType;
  final List<LearningPoint> learningPoints;

  const StepLearningData({
    required this.title,
    required this.description,
    required this.animationType,
    required this.learningPoints,
  });
}
