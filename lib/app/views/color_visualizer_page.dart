import 'package:flutter/material.dart';
import 'package:random_color_generator/app/streams/color_generator_stream.dart';

/// This page displays a random color.
class ColorVisualizerPage extends StatefulWidget {
  /// Creates a [ColorVisualizerPage].
  const ColorVisualizerPage({super.key});

  @override
  State<ColorVisualizerPage> createState() => _ColorVisualizerPageState();
}

class _ColorVisualizerPageState extends State<ColorVisualizerPage> {
  final _colorGeneratorStream = ColorGeneratorStream();

  @override
  void initState() {
    super.initState();
    _colorGeneratorStream.initiateGeneratingColors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Color Generator'),
      ),
      body: StreamBuilder<Color>(
        stream: _colorGeneratorStream.stream,
        builder: (context, snapshot) {
          return snapshot.data != null
              ? AnimatedContainer(
                  key: ValueKey(snapshot.data?.value),
                  duration: const Duration(milliseconds: 500),
                  color: snapshot.data,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }

  @override
  void dispose() {
    _colorGeneratorStream.dispose();
    super.dispose();
  }
}
