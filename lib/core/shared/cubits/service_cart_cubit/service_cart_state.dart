part of 'service_cart_cubit.dart';

@freezed
class ServiceCartStates with _$ServiceCartStates {
  const factory ServiceCartStates.initial() = _Initial;
  const factory ServiceCartStates.addedServiceToCart(final List<ServicesPlaceOrderEntity> service) = AddedServiceToCart;
  const factory ServiceCartStates.serviceAlreadyAdded(final List<ServicesPlaceOrderEntity> service) = ServiceAlreadyAdded;
  const factory ServiceCartStates.removedServiceFromCart(final List<ServicesPlaceOrderEntity> service) = RemovedServiceFromCart;
  const factory ServiceCartStates.serviceCartItems(final List<ServicesPlaceOrderEntity> service) = ServiceCartItems;

}
