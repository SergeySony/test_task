import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_task/random_color_generator.dart';

void main() {
  test('Does the color generator return different colors', () {
    final Color firstGenColor =
        RandomColorGenerator.generateRandomOpaqueColor();
    final Color secondGenColor =
        RandomColorGenerator.generateRandomOpaqueColor();

    // Check that colors are different.
    expect(firstGenColor == secondGenColor, false);
  });
}
