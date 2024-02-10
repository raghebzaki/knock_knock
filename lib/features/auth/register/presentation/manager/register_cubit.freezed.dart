// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RegisterState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterEntity? registerEntity});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerEntity = freezed,
  }) {
    return _then(_$SuccessImpl(
      freezed == registerEntity
          ? _value.registerEntity
          : registerEntity // ignore: cast_nullable_to_non_nullable
              as RegisterEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.registerEntity);

  @override
  final RegisterEntity? registerEntity;

  @override
  String toString() {
    return 'RegisterState.success(registerEntity: $registerEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.registerEntity, registerEntity) ||
                other.registerEntity == registerEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return success(registerEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return success?.call(registerEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(registerEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements RegisterState {
  const factory Success(final RegisterEntity? registerEntity) = _$SuccessImpl;

  RegisterEntity? get registerEntity;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckEmailSuccessImplCopyWith<$Res> {
  factory _$$CheckEmailSuccessImplCopyWith(_$CheckEmailSuccessImpl value,
          $Res Function(_$CheckEmailSuccessImpl) then) =
      __$$CheckEmailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$CheckEmailSuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$CheckEmailSuccessImpl>
    implements _$$CheckEmailSuccessImplCopyWith<$Res> {
  __$$CheckEmailSuccessImplCopyWithImpl(_$CheckEmailSuccessImpl _value,
      $Res Function(_$CheckEmailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CheckEmailSuccessImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckEmailSuccessImpl implements CheckEmailSuccess {
  const _$CheckEmailSuccessImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'RegisterState.checkEmailSuccess(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailSuccessImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckEmailSuccessImplCopyWith<_$CheckEmailSuccessImpl> get copyWith =>
      __$$CheckEmailSuccessImplCopyWithImpl<_$CheckEmailSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return checkEmailSuccess(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return checkEmailSuccess?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (checkEmailSuccess != null) {
      return checkEmailSuccess(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return checkEmailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return checkEmailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (checkEmailSuccess != null) {
      return checkEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class CheckEmailSuccess implements RegisterState {
  const factory CheckEmailSuccess(final String status) =
      _$CheckEmailSuccessImpl;

  String get status;
  @JsonKey(ignore: true)
  _$$CheckEmailSuccessImplCopyWith<_$CheckEmailSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errCode, String err});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? err = null,
  }) {
    return _then(_$ErrorImpl(
      null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errCode, this.err);

  @override
  final String errCode;
  @override
  final String err;

  @override
  String toString() {
    return 'RegisterState.error(errCode: $errCode, err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errCode, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return error(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return error?.call(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errCode, err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RegisterState {
  const factory Error(final String errCode, final String err) = _$ErrorImpl;

  String get errCode;
  String get err;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidEmailImplCopyWith<$Res> {
  factory _$$ValidEmailImplCopyWith(
          _$ValidEmailImpl value, $Res Function(_$ValidEmailImpl) then) =
      __$$ValidEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidEmailImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ValidEmailImpl>
    implements _$$ValidEmailImplCopyWith<$Res> {
  __$$ValidEmailImplCopyWithImpl(
      _$ValidEmailImpl _value, $Res Function(_$ValidEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidEmailImpl implements ValidEmail {
  const _$ValidEmailImpl();

  @override
  String toString() {
    return 'RegisterState.validEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterEntity? registerEntity) success,
    required TResult Function(String status) checkEmailSuccess,
    required TResult Function(String errCode, String err) error,
    required TResult Function() validEmail,
  }) {
    return validEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterEntity? registerEntity)? success,
    TResult? Function(String status)? checkEmailSuccess,
    TResult? Function(String errCode, String err)? error,
    TResult? Function()? validEmail,
  }) {
    return validEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterEntity? registerEntity)? success,
    TResult Function(String status)? checkEmailSuccess,
    TResult Function(String errCode, String err)? error,
    TResult Function()? validEmail,
    required TResult orElse(),
  }) {
    if (validEmail != null) {
      return validEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CheckEmailSuccess value) checkEmailSuccess,
    required TResult Function(Error value) error,
    required TResult Function(ValidEmail value) validEmail,
  }) {
    return validEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(ValidEmail value)? validEmail,
  }) {
    return validEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CheckEmailSuccess value)? checkEmailSuccess,
    TResult Function(Error value)? error,
    TResult Function(ValidEmail value)? validEmail,
    required TResult orElse(),
  }) {
    if (validEmail != null) {
      return validEmail(this);
    }
    return orElse();
  }
}

abstract class ValidEmail implements RegisterState {
  const factory ValidEmail() = _$ValidEmailImpl;
}
