part of 'product_cart_cubit.dart';

@freezed
class ProductCartStates with _$ProductCartStates {
  const factory ProductCartStates.initial() = _Initial;
  const factory ProductCartStates.addedProductToCart(final List<ProductEntity> products) = AddedToCart;
  const factory ProductCartStates.productAlreadyAdded(final List<ProductEntity> products) = AleardyAdded;
  const factory ProductCartStates.productRemovedFromCart(final List<ProductEntity> products) = RemovedFromCart;
  const factory ProductCartStates.productCartItems(final List<ProductEntity> products) = CartItems;
}
