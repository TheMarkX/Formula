import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackHelper {
  FeedbackHelper._();

  static Future<void> sendFeedback(BuildContext context) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'm.abdulrehmanadilkhan@gmail.com',
      queryParameters: {
        'subject': 'Formula',
      },
    );

    try {
      final launched = await launchUrl(emailUri);

      if (!launched && context.mounted) {
        _showError(context);
      }
    } catch (_) {
      if (context.mounted) {
        _showError(context);
      }
    }
  }

  static void _showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Could not open an email app. Please configure one and try again.',
        ),
      ),
    );
  }
}
