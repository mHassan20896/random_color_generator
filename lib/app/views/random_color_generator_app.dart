import 'package:flutter/material.dart';
import 'package:random_color_generator/app/views/color_visualizer_page.dart';

/// This is the entry point of the application.
class RandomColorGeneratorApp extends StatelessWidget {
  /// Creates a [RandomColorGeneratorApp].
  const RandomColorGeneratorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ColorVisualizerPage(),
    );
  }
}
