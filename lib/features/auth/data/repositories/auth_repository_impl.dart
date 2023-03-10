import 'package:cake_tech_test/core/errors/failure.dart';
import 'package:cake_tech_test/features/auth/data/data_sources/local_datasource.dart';
import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final LocalDatasource localDatasource;

  AuthRepositoryImpl({
    required this.localDatasource,
  });

  @override
  Future<Either<Failure, String?>> getPin() async {
    try {
      final pin = await localDatasource.getPin();
      return Right(pin);
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, bool>> isPinCodeLengthSix() async {
    try {
      final isPinCodeLengthSix = await localDatasource.isPinCodeLengthSix();
      return Right(isPinCodeLengthSix);
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, void>> savePin(String pin) async {
    try {
      await localDatasource.savePin(pin);
      return const Right(null);
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, void>> setPinCodeLength(bool isCodeSize) async {
    try {
      await localDatasource.setPinCodeLength(isCodeSize);
      return const Right(null);
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }
}
