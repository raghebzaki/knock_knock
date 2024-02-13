// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackOrderStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderStatesCopyWith<$Res> {
  factory $TrackOrderStatesCopyWith(
          TrackOrderStates value, $Res Function(TrackOrderStates) then) =
      _$TrackOrderStatesCopyWithImpl<$Res, TrackOrderStates>;
}

/// @nodoc
class _$TrackOrderStatesCopyWithImpl<$Res, $Val extends TrackOrderStates>
    implements $TrackOrderStatesCopyWith<$Res> {
  _$TrackOrderStatesCopyWithImpl(this._value, this._then);

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
    extends _$TrackOrderStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TrackOrderStates.initial()';
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
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
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
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrackOrderStates {
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
    extends _$TrackOrderStatesCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TrackOrderStates.loading()';
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
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
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
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TrackOrderStates {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackOrderEntity trackOrder});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TrackOrderStatesCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrder = null,
  }) {
    return _then(_$SuccessImpl(
      null == trackOrder
          ? _value.trackOrder
          : trackOrder // ignore: cast_nullable_to_non_nullable
              as TrackOrderEntity,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.trackOrder);

  @override
  final TrackOrderEntity trackOrder;

  @override
  String toString() {
    return 'TrackOrderStates.success(trackOrder: $trackOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.trackOrder, trackOrder) ||
                other.trackOrder == trackOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackOrder);

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
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) {
    return success(trackOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) {
    return success?.call(trackOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trackOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements TrackOrderStates {
  const factory Success(final TrackOrderEntity trackOrder) = _$SuccessImpl;

  TrackOrderEntity get trackOrder;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelSuccessImplCopyWith<$Res> {
  factory _$$CancelSuccessImplCopyWith(
          _$CancelSuccessImpl value, $Res Function(_$CancelSuccessImpl) then) =
      __$$CancelSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CancelOrderEntity cancelOrder});
}

/// @nodoc
class __$$CancelSuccessImplCopyWithImpl<$Res>
    extends _$TrackOrderStatesCopyWithImpl<$Res, _$CancelSuccessImpl>
    implements _$$CancelSuccessImplCopyWith<$Res> {
  __$$CancelSuccessImplCopyWithImpl(
      _$CancelSuccessImpl _value, $Res Function(_$CancelSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelOrder = null,
  }) {
    return _then(_$CancelSuccessImpl(
      null == cancelOrder
          ? _value.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as CancelOrderEntity,
    ));
  }
}

/// @nodoc

class _$CancelSuccessImpl implements CancelSuccess {
  const _$CancelSuccessImpl(this.cancelOrder);

  @override
  final CancelOrderEntity cancelOrder;

  @override
  String toString() {
    return 'TrackOrderStates.cancelSuccess(cancelOrder: $cancelOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelSuccessImpl &&
            (identical(other.cancelOrder, cancelOrder) ||
                other.cancelOrder == cancelOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cancelOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelSuccessImplCopyWith<_$CancelSuccessImpl> get copyWith =>
      __$$CancelSuccessImplCopyWithImpl<_$CancelSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) {
    return cancelSuccess(cancelOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) {
    return cancelSuccess?.call(cancelOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
    required TResult orElse(),
  }) {
    if (cancelSuccess != null) {
      return cancelSuccess(cancelOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) {
    return cancelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) {
    return cancelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (cancelSuccess != null) {
      return cancelSuccess(this);
    }
    return orElse();
  }
}

abstract class CancelSuccess implements TrackOrderStates {
  const factory CancelSuccess(final CancelOrderEntity cancelOrder) =
      _$CancelSuccessImpl;

  CancelOrderEntity get cancelOrder;
  @JsonKey(ignore: true)
  _$$CancelSuccessImplCopyWith<_$CancelSuccessImpl> get copyWith =>
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
    extends _$TrackOrderStatesCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'TrackOrderStates.error(errCode: $errCode, err: $err)';
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
    required TResult Function(TrackOrderEntity trackOrder) success,
    required TResult Function(CancelOrderEntity cancelOrder) cancelSuccess,
    required TResult Function(String errCode, String err) error,
  }) {
    return error(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrackOrderEntity trackOrder)? success,
    TResult? Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult? Function(String errCode, String err)? error,
  }) {
    return error?.call(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrackOrderEntity trackOrder)? success,
    TResult Function(CancelOrderEntity cancelOrder)? cancelSuccess,
    TResult Function(String errCode, String err)? error,
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
    required TResult Function(CancelSuccess value) cancelSuccess,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(CancelSuccess value)? cancelSuccess,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(CancelSuccess value)? cancelSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TrackOrderStates {
  const factory Error(final String errCode, final String err) = _$ErrorImpl;

  String get errCode;
  String get err;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
