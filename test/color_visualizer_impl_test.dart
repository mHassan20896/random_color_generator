import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/app/business/random_color_generator_impl.dart';

const _seed1FirstColor = 709911204;
const _seed1SecondColor = 1094627187;

void main() {
  test('Random color generator test', () {
    final colorGenerator = RandomColorGeneratorImpl(1);

    final firstColor = colorGenerator.generate();
    expect(firstColor.value, _seed1FirstColor);

    final secondColor = colorGenerator.generate();
    expect(secondColor.value, _seed1SecondColor);
  });
}
