// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductCartStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartStatesCopyWith<$Res> {
  factory $ProductCartStatesCopyWith(
          ProductCartStates value, $Res Function(ProductCartStates) then) =
      _$ProductCartStatesCopyWithImpl<$Res, ProductCartStates>;
}

/// @nodoc
class _$ProductCartStatesCopyWithImpl<$Res, $Val extends ProductCartStates>
    implements $ProductCartStatesCopyWith<$Res> {
  _$ProductCartStatesCopyWithImpl(this._value, this._then);

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
    extends _$ProductCartStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProductCartStates.initial()';
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
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
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
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductCartStates {
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
    extends _$ProductCartStatesCopyWithImpl<$Res, _$AddedToCartImpl>
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
    return 'ProductCartStates.addedProductToCart(products: $products)';
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
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) {
    return addedProductToCart(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) {
    return addedProductToCart?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
    required TResult orElse(),
  }) {
    if (addedProductToCart != null) {
      return addedProductToCart(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) {
    return addedProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) {
    return addedProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) {
    if (addedProductToCart != null) {
      return addedProductToCart(this);
    }
    return orElse();
  }
}

abstract class AddedToCart implements ProductCartStates {
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
    extends _$ProductCartStatesCopyWithImpl<$Res, _$AleardyAddedImpl>
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
    return 'ProductCartStates.productAlreadyAdded(products: $products)';
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
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) {
    return productAlreadyAdded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) {
    return productAlreadyAdded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
    required TResult orElse(),
  }) {
    if (productAlreadyAdded != null) {
      return productAlreadyAdded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) {
    return productAlreadyAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) {
    return productAlreadyAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) {
    if (productAlreadyAdded != null) {
      return productAlreadyAdded(this);
    }
    return orElse();
  }
}

abstract class AleardyAdded implements ProductCartStates {
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
    extends _$ProductCartStatesCopyWithImpl<$Res, _$RemovedFromCartImpl>
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
    return 'ProductCartStates.productRemovedFromCart(products: $products)';
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
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) {
    return productRemovedFromCart(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) {
    return productRemovedFromCart?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
    required TResult orElse(),
  }) {
    if (productRemovedFromCart != null) {
      return productRemovedFromCart(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) {
    return productRemovedFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) {
    return productRemovedFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) {
    if (productRemovedFromCart != null) {
      return productRemovedFromCart(this);
    }
    return orElse();
  }
}

abstract class RemovedFromCart implements ProductCartStates {
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
    extends _$ProductCartStatesCopyWithImpl<$Res, _$CartItemsImpl>
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
    return 'ProductCartStates.productCartItems(products: $products)';
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
    required TResult Function(List<ProductEntity> products) addedProductToCart,
    required TResult Function(List<ProductEntity> products) productAlreadyAdded,
    required TResult Function(List<ProductEntity> products)
        productRemovedFromCart,
    required TResult Function(List<ProductEntity> products) productCartItems,
  }) {
    return productCartItems(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductEntity> products)? addedProductToCart,
    TResult? Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult? Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult? Function(List<ProductEntity> products)? productCartItems,
  }) {
    return productCartItems?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductEntity> products)? addedProductToCart,
    TResult Function(List<ProductEntity> products)? productAlreadyAdded,
    TResult Function(List<ProductEntity> products)? productRemovedFromCart,
    TResult Function(List<ProductEntity> products)? productCartItems,
    required TResult orElse(),
  }) {
    if (productCartItems != null) {
      return productCartItems(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddedToCart value) addedProductToCart,
    required TResult Function(AleardyAdded value) productAlreadyAdded,
    required TResult Function(RemovedFromCart value) productRemovedFromCart,
    required TResult Function(CartItems value) productCartItems,
  }) {
    return productCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddedToCart value)? addedProductToCart,
    TResult? Function(AleardyAdded value)? productAlreadyAdded,
    TResult? Function(RemovedFromCart value)? productRemovedFromCart,
    TResult? Function(CartItems value)? productCartItems,
  }) {
    return productCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddedToCart value)? addedProductToCart,
    TResult Function(AleardyAdded value)? productAlreadyAdded,
    TResult Function(RemovedFromCart value)? productRemovedFromCart,
    TResult Function(CartItems value)? productCartItems,
    required TResult orElse(),
  }) {
    if (productCartItems != null) {
      return productCartItems(this);
    }
    return orElse();
  }
}

abstract class CartItems implements ProductCartStates {
  const factory CartItems(final List<ProductEntity> products) = _$CartItemsImpl;

  List<ProductEntity> get products;
  @JsonKey(ignore: true)
  _$$CartItemsImplCopyWith<_$CartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
