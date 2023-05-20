// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/app/views/random_color_generator_app.dart';

void main() {
  testWidgets('Random color generation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RandomColorGeneratorApp());

    expect(find.byType(Container), findsOneWidget);
  });
}
