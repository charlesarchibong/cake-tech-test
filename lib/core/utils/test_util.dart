import 'dart:io';

class TestUtil {
  const TestUtil._();

  static bool get isTest => Platform.environment.containsKey('FLUTTER_TEST');
}
