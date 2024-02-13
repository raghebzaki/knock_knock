// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStatesCopyWith<$Res> {
  factory $CartStatesCopyWith(
          CartStates value, $Res Function(CartStates) then) =
      _$CartStatesCopyWithImpl<$Res, CartStates>;
}

/// @nodoc
class _$CartStatesCopyWithImpl<$Res, $Val extends CartStates>
    implements $CartStatesCopyWith<$Res> {
  _$CartStatesCopyWithImpl(this._value, this._then);

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
    extends _$CartStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CartStates.initial()';
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
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
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
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddedToCartImplCopyWith<$Res> {
  factory _$$AddedToCartImplCopyWith(
          _$AddedToCartImpl value, $Res Function(_$AddedToCartImpl) then) =
      __$$AddedToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$AddedToCartImplCopyWithImpl<$Res>
    extends _$CartStatesCopyWithImpl<$Res, _$AddedToCartImpl>
    implements _$$AddedToCartImplCopyWith<$Res> {
  __$$AddedToCartImplCopyWithImpl(
      _$AddedToCartImpl _value, $Res Function(_$AddedToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$AddedToCartImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$AddedToCartImpl implements AddedToCart {
  const _$AddedToCartImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartStates.addedToCart(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedToCartImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedToCartImplCopyWith<_$AddedToCartImpl> get copyWith =>
      __$$AddedToCartImplCopyWithImpl<_$AddedToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) {
    return addedToCart(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) {
    return addedToCart?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
    required TResult orElse(),
  }) {
    if (addedToCart != null) {
      return addedToCart(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) {
    return addedToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) {
    return addedToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) {
    if (addedToCart != null) {
      return addedToCart(this);
    }
    return orElse();
  }
}

abstract class AddedToCart implements CartStates {
  const factory AddedToCart(final List<ProductEntity> products) =
      _$AddedToCartImpl;

  List<ProductEntity> get products;
  @JsonKey(ignore: true)
  _$$AddedToCartImplCopyWith<_$AddedToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AleardyAddedImplCopyWith<$Res> {
  factory _$$AleardyAddedImplCopyWith(
          _$AleardyAddedImpl value, $Res Function(_$AleardyAddedImpl) then) =
      __$$AleardyAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$AleardyAddedImplCopyWithImpl<$Res>
    extends _$CartStatesCopyWithImpl<$Res, _$AleardyAddedImpl>
    implements _$$AleardyAddedImplCopyWith<$Res> {
  __$$AleardyAddedImplCopyWithImpl(
      _$AleardyAddedImpl _value, $Res Function(_$AleardyAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$AleardyAddedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$AleardyAddedImpl implements AleardyAdded {
  const _$AleardyAddedImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartStates.alreadyAdded(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AleardyAddedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AleardyAddedImplCopyWith<_$AleardyAddedImpl> get copyWith =>
      __$$AleardyAddedImplCopyWithImpl<_$AleardyAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) {
    return alreadyAdded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) {
    return alreadyAdded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
    required TResult orElse(),
  }) {
    if (alreadyAdded != null) {
      return alreadyAdded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) {
    return alreadyAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) {
    return alreadyAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) {
    if (alreadyAdded != null) {
      return alreadyAdded(this);
    }
    return orElse();
  }
}

abstract class AleardyAdded implements CartStates {
  const factory AleardyAdded(final List<ProductEntity> products) =
      _$AleardyAddedImpl;

  List<ProductEntity> get products;
  @JsonKey(ignore: true)
  _$$AleardyAddedImplCopyWith<_$AleardyAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedFromCartImplCopyWith<$Res> {
  factory _$$RemovedFromCartImplCopyWith(_$RemovedFromCartImpl value,
          $Res Function(_$RemovedFromCartImpl) then) =
      __$$RemovedFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$RemovedFromCartImplCopyWithImpl<$Res>
    extends _$CartStatesCopyWithImpl<$Res, _$RemovedFromCartImpl>
    implements _$$RemovedFromCartImplCopyWith<$Res> {
  __$$RemovedFromCartImplCopyWithImpl(
      _$RemovedFromCartImpl _value, $Res Function(_$RemovedFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$RemovedFromCartImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$RemovedFromCartImpl implements RemovedFromCart {
  const _$RemovedFromCartImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartStates.removedFromCart(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedFromCartImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedFromCartImplCopyWith<_$RemovedFromCartImpl> get copyWith =>
      __$$RemovedFromCartImplCopyWithImpl<_$RemovedFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) {
    return removedFromCart(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) {
    return removedFromCart?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
    required TResult orElse(),
  }) {
    if (removedFromCart != null) {
      return removedFromCart(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) {
    return removedFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) {
    return removedFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) {
    if (removedFromCart != null) {
      return removedFromCart(this);
    }
    return orElse();
  }
}

abstract class RemovedFromCart implements CartStates {
  const factory RemovedFromCart(final List<ProductEntity> products) =
      _$RemovedFromCartImpl;

  List<ProductEntity> get products;
  @JsonKey(ignore: true)
  _$$RemovedFromCartImplCopyWith<_$RemovedFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemsImplCopyWith<$Res> {
  factory _$$CartItemsImplCopyWith(
          _$CartItemsImpl value, $Res Function(_$CartItemsImpl) then) =
      __$$CartItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$CartItemsImplCopyWithImpl<$Res>
    extends _$CartStatesCopyWithImpl<$Res, _$CartItemsImpl>
    implements _$$CartItemsImplCopyWith<$Res> {
  __$$CartItemsImplCopyWithImpl(
      _$CartItemsImpl _value, $Res Function(_$CartItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CartItemsImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$CartItemsImpl implements CartItems {
  const _$CartItemsImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartStates.cartItems(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsImplCopyWith<_$CartItemsImpl> get copyWith =>
      __$$CartItemsImplCopyWithImpl<_$CartItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedToCart,
    required TResult Function(List<ProductEntity> products) alreadyAdded,
    required TResult Function(List<ProductEntity> products) removedFromCart,
    required TResult Function(List<ProductEntity> products) cartItems,
  }) {
    return cartItems(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedToCart,
    TResult? Function(List<ProductEntity> products)? alreadyAdded,
    TResult? Function(List<ProductEntity> products)? removedFromCart,
    TResult? Function(List<ProductEntity> products)? cartItems,
  }) {
    return cartItems?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedToCart,
    TResult Function(List<ProductEntity> products)? alreadyAdded,
    TResult Function(List<ProductEntity> products)? removedFromCart,
    TResult Function(List<ProductEntity> products)? cartItems,
    required TResult orElse(),
  }) {
    if (cartItems != null) {
      return cartItems(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedToCart,
    required TResult Function(AleardyAdded value) alreadyAdded,
    required TResult Function(RemovedFromCart value) removedFromCart,
    required TResult Function(CartItems value) cartItems,
  }) {
    return cartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedToCart,
    TResult? Function(AleardyAdded value)? alreadyAdded,
    TResult? Function(RemovedFromCart value)? removedFromCart,
    TResult? Function(CartItems value)? cartItems,
  }) {
    return cartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedToCart,
    TResult Function(AleardyAdded value)? alreadyAdded,
    TResult Function(RemovedFromCart value)? removedFromCart,
    TResult Function(CartItems value)? cartItems,
    required TResult orElse(),
  }) {
    if (cartItems != null) {
      return cartItems(this);
    }
    return orElse();
  }
}

abstract class CartItems implements CartStates {
  const factory CartItems(final List<ProductEntity> products) = _$CartItemsImpl;

  List<ProductEntity> get products;
  @JsonKey(ignore: true)
  _$$CartItemsImplCopyWith<_$CartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
