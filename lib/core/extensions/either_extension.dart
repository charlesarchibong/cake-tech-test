import 'package:dartz/dartz.dart';

extension EitherExtension<L, R> on Either<L, R> {
  L? get leftOrNull {
    return fold((l) => l, (r) => null);
  }

  R? get rightOrNull {
    return fold((l) => null, (r) => r);
  }
}
