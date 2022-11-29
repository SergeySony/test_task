import 'package:flutter/material.dart';
import 'package:test_task/random_color_generator.dart';

/// The class contains the color scheme of the application.
class ScreenColorScheme {
  static const double _luminanceToChangeTextColorToDark = 0.5;

  /// Application background color.
  final Color backgroundColor;

  /// The color of the text that is visible on the background.
  Color textColorVisibleOnBackground = Colors.white;

  /// Color scheme constructor.
  ScreenColorScheme()
      : backgroundColor = RandomColorGenerator.generateRandomOpaqueColor() {
    textColorVisibleOnBackground =
        backgroundColor.computeLuminance() > _luminanceToChangeTextColorToDark
            ? Colors.black
            : Colors.white;
  }
}
