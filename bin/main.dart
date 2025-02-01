import 'dart:io';
import 'package:my_lucky_app/lucky.dart';

void main(List<String> arguments) {
  for (var name in arguments) {
    var capitalized = name[0].toUpperCase() + name.substring(1);
    var lucky = Lucky();
    print('Hello $capitalized. Your lucky number is ${lucky.luckyNumber}.');
  }
}