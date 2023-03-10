import 'package:cake_tech_test/core/core.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> setPinCodeLength(bool isCodeSize);
  Future<Either<Failure, void>> savePin(String pin);
  Future<Either<Failure, String?>> getPin();
  Future<Either<Failure, bool>> isPinCodeLengthSix();
}
