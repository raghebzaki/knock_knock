// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarouselState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselStateCopyWith<$Res> {
  factory $CarouselStateCopyWith(
          CarouselState value, $Res Function(CarouselState) then) =
      _$CarouselStateCopyWithImpl<$Res, CarouselState>;
}

/// @nodoc
class _$CarouselStateCopyWithImpl<$Res, $Val extends CarouselState>
    implements $CarouselStateCopyWith<$Res> {
  _$CarouselStateCopyWithImpl(this._value, this._then);

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
    extends _$CarouselStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CarouselState.initial()';
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
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
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
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
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
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
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
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CarouselState {
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
    extends _$CarouselStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CarouselState.loading()';
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
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
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
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
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
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
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
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CarouselState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarouselEntity>? carouselEntity});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselEntity = freezed,
  }) {
    return _then(_$SuccessImpl(
      freezed == carouselEntity
          ? _value._carouselEntity
          : carouselEntity // ignore: cast_nullable_to_non_nullable
              as List<CarouselEntity>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(final List<CarouselEntity>? carouselEntity)
      : _carouselEntity = carouselEntity;

  final List<CarouselEntity>? _carouselEntity;
  @override
  List<CarouselEntity>? get carouselEntity {
    final value = _carouselEntity;
    if (value == null) return null;
    if (_carouselEntity is EqualUnmodifiableListView) return _carouselEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarouselState.success(carouselEntity: $carouselEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._carouselEntity, _carouselEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_carouselEntity));

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
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return success(carouselEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return success?.call(carouselEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(carouselEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
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
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
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
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CarouselState {
  const factory Success(final List<CarouselEntity>? carouselEntity) =
      _$SuccessImpl;

  List<CarouselEntity>? get carouselEntity;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationLoadingImplCopyWith<$Res> {
  factory _$$PaginationLoadingImplCopyWith(_$PaginationLoadingImpl value,
          $Res Function(_$PaginationLoadingImpl) then) =
      __$$PaginationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationLoadingImplCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$PaginationLoadingImpl>
    implements _$$PaginationLoadingImplCopyWith<$Res> {
  __$$PaginationLoadingImplCopyWithImpl(_$PaginationLoadingImpl _value,
      $Res Function(_$PaginationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginationLoadingImpl implements PaginationLoading {
  const _$PaginationLoadingImpl();

  @override
  String toString() {
    return 'CarouselState.paginationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaginationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return paginationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return paginationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
    required TResult Function(Error value) error,
  }) {
    return paginationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
    TResult? Function(Error value)? error,
  }) {
    return paginationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading(this);
    }
    return orElse();
  }
}

abstract class PaginationLoading implements CarouselState {
  const factory PaginationLoading() = _$PaginationLoadingImpl;
}

/// @nodoc
abstract class _$$PaginationErrorImplCopyWith<$Res> {
  factory _$$PaginationErrorImplCopyWith(_$PaginationErrorImpl value,
          $Res Function(_$PaginationErrorImpl) then) =
      __$$PaginationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errCode, String? err});
}

/// @nodoc
class __$$PaginationErrorImplCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$PaginationErrorImpl>
    implements _$$PaginationErrorImplCopyWith<$Res> {
  __$$PaginationErrorImplCopyWithImpl(
      _$PaginationErrorImpl _value, $Res Function(_$PaginationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = freezed,
    Object? err = freezed,
  }) {
    return _then(_$PaginationErrorImpl(
      freezed == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaginationErrorImpl implements PaginationError {
  const _$PaginationErrorImpl(this.errCode, this.err);

  @override
  final String? errCode;
  @override
  final String? err;

  @override
  String toString() {
    return 'CarouselState.paginationError(errCode: $errCode, err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationErrorImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errCode, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationErrorImplCopyWith<_$PaginationErrorImpl> get copyWith =>
      __$$PaginationErrorImplCopyWithImpl<_$PaginationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return paginationError(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return paginationError?.call(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
    required TResult orElse(),
  }) {
    if (paginationError != null) {
      return paginationError(errCode, err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
    required TResult Function(Error value) error,
  }) {
    return paginationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
    TResult? Function(Error value)? error,
  }) {
    return paginationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (paginationError != null) {
      return paginationError(this);
    }
    return orElse();
  }
}

abstract class PaginationError implements CarouselState {
  const factory PaginationError(final String? errCode, final String? err) =
      _$PaginationErrorImpl;

  String? get errCode;
  String? get err;
  @JsonKey(ignore: true)
  _$$PaginationErrorImplCopyWith<_$PaginationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errCode, String? err});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = freezed,
    Object? err = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errCode, this.err);

  @override
  final String? errCode;
  @override
  final String? err;

  @override
  String toString() {
    return 'CarouselState.error(errCode: $errCode, err: $err)';
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
    required TResult Function(List<CarouselEntity>? carouselEntity) success,
    required TResult Function() paginationLoading,
    required TResult Function(String? errCode, String? err) paginationError,
    required TResult Function(String? errCode, String? err) error,
  }) {
    return error(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CarouselEntity>? carouselEntity)? success,
    TResult? Function()? paginationLoading,
    TResult? Function(String? errCode, String? err)? paginationError,
    TResult? Function(String? errCode, String? err)? error,
  }) {
    return error?.call(errCode, err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CarouselEntity>? carouselEntity)? success,
    TResult Function()? paginationLoading,
    TResult Function(String? errCode, String? err)? paginationError,
    TResult Function(String? errCode, String? err)? error,
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
    required TResult Function(PaginationLoading value) paginationLoading,
    required TResult Function(PaginationError value) paginationError,
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
    TResult? Function(PaginationLoading value)? paginationLoading,
    TResult? Function(PaginationError value)? paginationError,
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
    TResult Function(PaginationLoading value)? paginationLoading,
    TResult Function(PaginationError value)? paginationError,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CarouselState {
  const factory Error(final String? errCode, final String? err) = _$ErrorImpl;

  String? get errCode;
  String? get err;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
