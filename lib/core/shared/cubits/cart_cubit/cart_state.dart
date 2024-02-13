part of 'cart_cubit.dart';

@freezed
class CartStates with _$CartStates {
  const factory CartStates.initial() = _Initial;

  const factory CartStates.addedToCart(final List<ProductEntity> products) =
      AddedToCart;

  const factory CartStates.alreadyAdded(final List<ProductEntity> products) =
      AleardyAdded;

  const factory CartStates.removedFromCart(final List<ProductEntity> products) =
      RemovedFromCart;

  const factory CartStates.cartItems(final List<ProductEntity> products) =
      CartItems;
}
