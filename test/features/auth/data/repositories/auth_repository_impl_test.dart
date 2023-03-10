import 'package:cake_tech_test/core/core.dart';
import 'package:cake_tech_test/features/auth/data/data_sources/local_datasource.dart';
import 'package:cake_tech_test/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([LocalDatasource])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockLocalDatasource mockLocalDatasource;
  late AuthRepositoryImpl authRepository;

  setUp(() {
    mockLocalDatasource = MockLocalDatasource();
    authRepository = AuthRepositoryImpl(localDatasource: mockLocalDatasource);
  });

  group('AuthRepositoryImpl', () {
    group('get pin', () {
      test('should return pin', () async {
        // arrange
        when(mockLocalDatasource.getPin()).thenAnswer((_) async => '1234');

        // act
        final result = await authRepository.getPin();

        // assert
        expect(result, isA<Right>());
        expect(result.rightOrNull, '1234');
      });

      test('should return failure if pin is not found', () async {
        // arrange
        when(mockLocalDatasource.getPin()).thenThrow((_) async => Exception());

        // act
        final result = await authRepository.getPin();

        // assert
        expect(result, isA<Left>());
      });
    });

    group('is pin code length six', () {
      test('should return bool is value is found', () async {
        // arrange
        when(mockLocalDatasource.isPinCodeLengthSix()).thenAnswer((_) async => true);

        // act
        final result = await authRepository.isPinCodeLengthSix();

        // assert
        expect(result, isA<Right>());
        expect(result.rightOrNull, true);
      });

      test('should return failure if value is not found', () async {
        // arrange
        when(mockLocalDatasource.isPinCodeLengthSix()).thenThrow((_) async => Exception());

        // act
        final result = await authRepository.isPinCodeLengthSix();

        // assert
        expect(result, isA<Left>());
      });
    });

    group('save pin', () {
      test('should return right', () async {
        // arrange
        when(mockLocalDatasource.savePin(any)).thenAnswer((_) async => true);

        // act
        final result = await authRepository.savePin('1234');

        // assert
        expect(result, isA<Right>());
      });
    });

    group('set pin code length', () {
      test('should return right', () async {
        // arrange
        when(mockLocalDatasource.setPinCodeLength(any)).thenAnswer((_) async => true);

        // act
        final result = await authRepository.setPinCodeLength(true);

        // assert
        expect(result, isA<Right>());
      });
    });
  });
}
