import 'dart:io';
import 'dart:math';

class Lucky {
  final int luckyNumber;

  Lucky() : luckyNumber = generateLuckyNumber();

  static int generateLuckyNumber() {
    final min = int.parse(Platform.environment['MIN'] ?? '0');
    final max = int.parse(Platform.environment['MAX'] ?? '100');
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }
}