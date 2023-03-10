// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ServerFailureCopyWith<$Res> {
  factory _$$_$ServerFailureCopyWith(
          _$_$ServerFailure value, $Res Function(_$_$ServerFailure) then) =
      __$$_$ServerFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_$ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_$ServerFailure>
    implements _$$_$ServerFailureCopyWith<$Res> {
  __$$_$ServerFailureCopyWithImpl(
      _$_$ServerFailure _value, $Res Function(_$_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_$ServerFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ServerFailure implements _$ServerFailure {
  const _$_$ServerFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ServerFailureCopyWith<_$_$ServerFailure> get copyWith =>
      __$$_$ServerFailureCopyWithImpl<_$_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerFailure implements Failure {
  const factory _$ServerFailure(final String message) = _$_$ServerFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_$ServerFailureCopyWith<_$_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$NoInternetFailureCopyWith<$Res> {
  factory _$$_$NoInternetFailureCopyWith(_$_$NoInternetFailure value,
          $Res Function(_$_$NoInternetFailure) then) =
      __$$_$NoInternetFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$NoInternetFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_$NoInternetFailure>
    implements _$$_$NoInternetFailureCopyWith<$Res> {
  __$$_$NoInternetFailureCopyWithImpl(
      _$_$NoInternetFailure _value, $Res Function(_$_$NoInternetFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$NoInternetFailure implements _$NoInternetFailure {
  const _$_$NoInternetFailure();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$NoInternetFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetFailure implements Failure {
  const factory _$NoInternetFailure() = _$_$NoInternetFailure;
}

/// @nodoc
abstract class _$$_$UnknownFailureCopyWith<$Res> {
  factory _$$_$UnknownFailureCopyWith(
          _$_$UnknownFailure value, $Res Function(_$_$UnknownFailure) then) =
      __$$_$UnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$UnknownFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_$UnknownFailure>
    implements _$$_$UnknownFailureCopyWith<$Res> {
  __$$_$UnknownFailureCopyWithImpl(
      _$_$UnknownFailure _value, $Res Function(_$_$UnknownFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$UnknownFailure implements _$UnknownFailure {
  const _$_$UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownFailure implements Failure {
  const factory _$UnknownFailure() = _$_$UnknownFailure;
}
