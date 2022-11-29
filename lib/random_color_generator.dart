import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

/// The class that is used to generate random colors.
class RandomColorGenerator {
  static const _maxIntColor = 0xffffffff;
  static const _alphaForOpaqueColorGenerator = 0xff;

  /// The method generates random opaque colors.
  /// Using the math generation of a number of type Int.
  static Color generateRandomOpaqueColor() {
    return Color(Random().nextInt(_maxIntColor))
        .withAlpha(_alphaForOpaqueColorGenerator);
  }
}
