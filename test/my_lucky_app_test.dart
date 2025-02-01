import 'dart:io';
import 'package:my_lucky_app/my_lucky_app.dart';
import 'package:test/test.dart';

void main() {
  test('Lucky number is within expected range', () {
    // Set environment variables for testing
    Platform.environment['MIN'] = '30';
    Platform.environment['MAX'] = '60';

    var lucky = Lucky();
    
    expect(lucky.luckyNumber, inInclusiveRange(30, 60));
  });
}
