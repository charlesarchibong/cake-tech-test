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
    await sharedPreferences.setBool(pinCodeLengthKey, isCodeSix);
  }

  @override
  Future<void> savePin(String pin) async {
    await sharedPreferences.setString(pinKey, pin);
  }

  @override
  Future<String?> getPin() async {
    return sharedPreferences.getString(pinKey);
  }

  @override
  Future<bool> isPinCodeLengthSix() async {
    return sharedPreferences.getBool(pinCodeLengthKey) ?? false;
  }
}

const pinCodeLengthKey = 'pinCodeLength';
const pinKey = 'pin';
