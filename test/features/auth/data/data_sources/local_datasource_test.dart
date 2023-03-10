import 'package:cake_tech_test/features/auth/data/data_sources/local_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_datasource_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late LocalDatasourceImpl localDatasourceImpl;
  late SharedPreferences sharedPreferences;

  setUp(() {
    sharedPreferences = MockSharedPreferences();
    localDatasourceImpl = LocalDatasourceImpl(sharedPreferences: sharedPreferences);
  });

  group('setPinCodeLength', () {
    test('should call SharedPreferences.setBool with the correct arguments', () async {
      const isCodeSix = true;
      when(sharedPreferences.setBool(pinCodeLengthKey, isCodeSix)).thenAnswer((_) async => true);

      await localDatasourceImpl.setPinCodeLength(isCodeSix);

      verify(sharedPreferences.setBool(pinCodeLengthKey, isCodeSix));
      verifyNoMoreInteractions(sharedPreferences);
    });
  });

  group('savePin', () {
    test('should call SharedPreferences.setString with the correct arguments', () async {
      const pin = '123456';
      when(sharedPreferences.setString(pinKey, pin)).thenAnswer((_) async => true);

      await localDatasourceImpl.savePin(pin);

      verify(sharedPreferences.setString(pinKey, pin));
      verifyNoMoreInteractions(sharedPreferences);
    });
  });

  group('getPin', () {
    test('should call SharedPreferences.getString and return the value', () async {
      const String pin = '123456';
      when(sharedPreferences.getString(pinKey)).thenReturn(pin);

      final result = await localDatasourceImpl.getPin();

      verify(sharedPreferences.getString(pinKey));
      verifyNoMoreInteractions(sharedPreferences);
      expect(result, equals(pin));
    });
  });

  group('isPinCodeLengthSix', () {
    test('should call SharedPreferences.getBool and return the value', () async {
      const bool isCodeSix = true;
      when(sharedPreferences.getBool(pinCodeLengthKey)).thenReturn(isCodeSix);

      final result = await localDatasourceImpl.isPinCodeLengthSix();

      verify(sharedPreferences.getBool(pinCodeLengthKey));
      verifyNoMoreInteractions(sharedPreferences);
      expect(result, equals(isCodeSix));
    });

    test('should return false if SharedPreferences.getBool returns null', () async {
      when(sharedPreferences.getBool(pinCodeLengthKey)).thenReturn(null);

      final result = await localDatasourceImpl.isPinCodeLengthSix();

      verify(sharedPreferences.getBool(pinCodeLengthKey));
      verifyNoMoreInteractions(sharedPreferences);
      expect(result, equals(false));
    });
  });
}
