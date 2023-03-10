import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDatasource {
  Future<void> setPinCodeLength(bool isSixCode);
  Future<void> savePin(String pin);
  Future<String?> getPin();
  Future<bool> isPinCodeLengthSix();
}

@LazySingleton(as: LocalDatasource)
class LocalDatasourceImpl implements LocalDatasource {
  final SharedPreferences sharedPreferences;

  LocalDatasourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<void> setPinCodeLength(bool isCodeSix) async {
    await sharedPreferences.setBool(_pinCodeLength, isCodeSix);
  }

  @override
  Future<void> savePin(String pin) async {
    await sharedPreferences.setString(_pin, pin);
  }

  @override
  Future<String?> getPin() async {
    return sharedPreferences.getString(_pin);
  }

  @override
  Future<bool> isPinCodeLengthSix() async {
    return sharedPreferences.getBool(_pinCodeLength) ?? false;
  }
}

const _pinCodeLength = 'pinCodeLength';
const _pin = 'pin';
