import 'dart:math';

import 'package:flutter/services.dart';
import 'package:random_color_generator/app/business/random_color_generator.dart';

/// This class implements [RandomColorGenerator].
class RandomColorGeneratorImpl extends RandomColorGenerator {
  final Random _random;

  /// Creates a [RandomColorGeneratorImpl].
  RandomColorGeneratorImpl([int? seed]) : _random = Random(seed);

  @override
  Color generate() {
    final numOfColorsPossible = pow(16, 8).toInt();
    final randomColor = _random.nextInt(numOfColorsPossible);

    return Color(randomColor);
  }
}
