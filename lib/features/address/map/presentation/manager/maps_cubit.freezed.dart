// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapsStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStatesCopyWith<$Res> {
  factory $MapsStatesCopyWith(
          MapsStates value, $Res Function(MapsStates) then) =
      _$MapsStatesCopyWithImpl<$Res, MapsStates>;
}

/// @nodoc
class _$MapsStatesCopyWithImpl<$Res, $Val extends MapsStates>
    implements $MapsStatesCopyWith<$Res> {
  _$MapsStatesCopyWithImpl(this._value, this._then);

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
    extends _$MapsStatesCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapsStates.initial'));
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
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
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
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapsStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetUserLocationLoadingImplCopyWith<$Res> {
  factory _$$GetUserLocationLoadingImplCopyWith(
          _$GetUserLocationLoadingImpl value,
          $Res Function(_$GetUserLocationLoadingImpl) then) =
      __$$GetUserLocationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserLocationLoadingImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$GetUserLocationLoadingImpl>
    implements _$$GetUserLocationLoadingImplCopyWith<$Res> {
  __$$GetUserLocationLoadingImplCopyWithImpl(
      _$GetUserLocationLoadingImpl _value,
      $Res Function(_$GetUserLocationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserLocationLoadingImpl
    with DiagnosticableTreeMixin
    implements GetUserLocationLoading {
  const _$GetUserLocationLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.getUserLocationLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MapsStates.getUserLocationLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLocationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return getUserLocationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return getUserLocationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationLoading != null) {
      return getUserLocationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return getUserLocationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return getUserLocationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationLoading != null) {
      return getUserLocationLoading(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationLoading implements MapsStates {
  const factory GetUserLocationLoading() = _$GetUserLocationLoadingImpl;
}

/// @nodoc
abstract class _$$GetUserLocationSuccessImplCopyWith<$Res> {
  factory _$$GetUserLocationSuccessImplCopyWith(
          _$GetUserLocationSuccessImpl value,
          $Res Function(_$GetUserLocationSuccessImpl) then) =
      __$$GetUserLocationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$GetUserLocationSuccessImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$GetUserLocationSuccessImpl>
    implements _$$GetUserLocationSuccessImplCopyWith<$Res> {
  __$$GetUserLocationSuccessImplCopyWithImpl(
      _$GetUserLocationSuccessImpl _value,
      $Res Function(_$GetUserLocationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$GetUserLocationSuccessImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$GetUserLocationSuccessImpl
    with DiagnosticableTreeMixin
    implements GetUserLocationSuccess {
  const _$GetUserLocationSuccessImpl(this.location);

  @override
  final LatLng location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.getUserLocationSuccess(location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsStates.getUserLocationSuccess'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLocationSuccessImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserLocationSuccessImplCopyWith<_$GetUserLocationSuccessImpl>
      get copyWith => __$$GetUserLocationSuccessImplCopyWithImpl<
          _$GetUserLocationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return getUserLocationSuccess(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return getUserLocationSuccess?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationSuccess != null) {
      return getUserLocationSuccess(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return getUserLocationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return getUserLocationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationSuccess != null) {
      return getUserLocationSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationSuccess implements MapsStates {
  const factory GetUserLocationSuccess(final LatLng location) =
      _$GetUserLocationSuccessImpl;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$GetUserLocationSuccessImplCopyWith<_$GetUserLocationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserLocationErrorImplCopyWith<$Res> {
  factory _$$GetUserLocationErrorImplCopyWith(_$GetUserLocationErrorImpl value,
          $Res Function(_$GetUserLocationErrorImpl) then) =
      __$$GetUserLocationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$GetUserLocationErrorImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$GetUserLocationErrorImpl>
    implements _$$GetUserLocationErrorImplCopyWith<$Res> {
  __$$GetUserLocationErrorImplCopyWithImpl(_$GetUserLocationErrorImpl _value,
      $Res Function(_$GetUserLocationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$GetUserLocationErrorImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserLocationErrorImpl
    with DiagnosticableTreeMixin
    implements GetUserLocationError {
  const _$GetUserLocationErrorImpl(this.err);

  @override
  final String err;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.getUserLocationError(err: $err)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsStates.getUserLocationError'))
      ..add(DiagnosticsProperty('err', err));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLocationErrorImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserLocationErrorImplCopyWith<_$GetUserLocationErrorImpl>
      get copyWith =>
          __$$GetUserLocationErrorImplCopyWithImpl<_$GetUserLocationErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return getUserLocationError(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return getUserLocationError?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationError != null) {
      return getUserLocationError(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return getUserLocationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return getUserLocationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (getUserLocationError != null) {
      return getUserLocationError(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationError implements MapsStates {
  const factory GetUserLocationError(final String err) =
      _$GetUserLocationErrorImpl;

  String get err;
  @JsonKey(ignore: true)
  _$$GetUserLocationErrorImplCopyWith<_$GetUserLocationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomMarkerImplCopyWith<$Res> {
  factory _$$CustomMarkerImplCopyWith(
          _$CustomMarkerImpl value, $Res Function(_$CustomMarkerImpl) then) =
      __$$CustomMarkerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomMarkerImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$CustomMarkerImpl>
    implements _$$CustomMarkerImplCopyWith<$Res> {
  __$$CustomMarkerImplCopyWithImpl(
      _$CustomMarkerImpl _value, $Res Function(_$CustomMarkerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomMarkerImpl with DiagnosticableTreeMixin implements CustomMarker {
  const _$CustomMarkerImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.customMarker()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapsStates.customMarker'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomMarkerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return customMarker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return customMarker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (customMarker != null) {
      return customMarker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return customMarker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return customMarker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (customMarker != null) {
      return customMarker(this);
    }
    return orElse();
  }
}

abstract class CustomMarker implements MapsStates {
  const factory CustomMarker() = _$CustomMarkerImpl;
}

/// @nodoc
abstract class _$$NewLocationImplCopyWith<$Res> {
  factory _$$NewLocationImplCopyWith(
          _$NewLocationImpl value, $Res Function(_$NewLocationImpl) then) =
      __$$NewLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewLocationImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$NewLocationImpl>
    implements _$$NewLocationImplCopyWith<$Res> {
  __$$NewLocationImplCopyWithImpl(
      _$NewLocationImpl _value, $Res Function(_$NewLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewLocationImpl with DiagnosticableTreeMixin implements NewLocation {
  const _$NewLocationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.newLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapsStates.newLocation'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return newLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return newLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (newLocation != null) {
      return newLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return newLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return newLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (newLocation != null) {
      return newLocation(this);
    }
    return orElse();
  }
}

abstract class NewLocation implements MapsStates {
  const factory NewLocation() = _$NewLocationImpl;
}

/// @nodoc
abstract class _$$MapControllerImplCopyWith<$Res> {
  factory _$$MapControllerImplCopyWith(
          _$MapControllerImpl value, $Res Function(_$MapControllerImpl) then) =
      __$$MapControllerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapControllerImplCopyWithImpl<$Res>
    extends _$MapsStatesCopyWithImpl<$Res, _$MapControllerImpl>
    implements _$$MapControllerImplCopyWith<$Res> {
  __$$MapControllerImplCopyWithImpl(
      _$MapControllerImpl _value, $Res Function(_$MapControllerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapControllerImpl
    with DiagnosticableTreeMixin
    implements MapController {
  const _$MapControllerImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsStates.mapController()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapsStates.mapController'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapControllerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLocationLoading,
    required TResult Function(LatLng location) getUserLocationSuccess,
    required TResult Function(String err) getUserLocationError,
    required TResult Function() customMarker,
    required TResult Function() newLocation,
    required TResult Function() mapController,
  }) {
    return mapController();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLocationLoading,
    TResult? Function(LatLng location)? getUserLocationSuccess,
    TResult? Function(String err)? getUserLocationError,
    TResult? Function()? customMarker,
    TResult? Function()? newLocation,
    TResult? Function()? mapController,
  }) {
    return mapController?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLocationLoading,
    TResult Function(LatLng location)? getUserLocationSuccess,
    TResult Function(String err)? getUserLocationError,
    TResult Function()? customMarker,
    TResult Function()? newLocation,
    TResult Function()? mapController,
    required TResult orElse(),
  }) {
    if (mapController != null) {
      return mapController();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLocationLoading value)
        getUserLocationLoading,
    required TResult Function(GetUserLocationSuccess value)
        getUserLocationSuccess,
    required TResult Function(GetUserLocationError value) getUserLocationError,
    required TResult Function(CustomMarker value) customMarker,
    required TResult Function(NewLocation value) newLocation,
    required TResult Function(MapController value) mapController,
  }) {
    return mapController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult? Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult? Function(GetUserLocationError value)? getUserLocationError,
    TResult? Function(CustomMarker value)? customMarker,
    TResult? Function(NewLocation value)? newLocation,
    TResult? Function(MapController value)? mapController,
  }) {
    return mapController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLocationLoading value)? getUserLocationLoading,
    TResult Function(GetUserLocationSuccess value)? getUserLocationSuccess,
    TResult Function(GetUserLocationError value)? getUserLocationError,
    TResult Function(CustomMarker value)? customMarker,
    TResult Function(NewLocation value)? newLocation,
    TResult Function(MapController value)? mapController,
    required TResult orElse(),
  }) {
    if (mapController != null) {
      return mapController(this);
    }
    return orElse();
  }
}

abstract class MapController implements MapsStates {
  const factory MapController() = _$MapControllerImpl;
}
