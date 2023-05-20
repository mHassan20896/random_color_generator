import 'dart:async';

import 'package:flutter/material.dart';
import 'package:random_color_generator/app/business/random_color_generator.dart';
import 'package:random_color_generator/app/business/random_color_generator_impl.dart';

/// This class broadcasts Stream of randomly generated colors.
class ColorGeneratorStream {
  final _controller = StreamController<Color>.broadcast();

  Timer? _timer;

  /// Creates a [RandomColorGeneratorImpl].
  final RandomColorGenerator _colorGenerator;

  /// Get the stream of randomly generated colors.
  Stream<Color> get stream => _controller.stream;

  /// Creates a [ColorGeneratorStream].
  ColorGeneratorStream([int? seed])
      : _colorGenerator = RandomColorGeneratorImpl(seed);

  /// Generates a random color.
  void _generate() {
    final color = _colorGenerator.generate();
    _controller.sink.add(color);
  }

  /// initiates generating colors periodically for every second
  void initiateGeneratingColors() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _generate();
    });
  }

  /// Disposes the stream.
  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}
