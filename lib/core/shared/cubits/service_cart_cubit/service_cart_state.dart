part of 'service_cart_cubit.dart';

@freezed
class ServiceCartStates with _$ServiceCartStates {
  const factory ServiceCartStates.initial() = _Initial;
  const factory ServiceCartStates.addedServiceToCart(final List<ServicesEntity> service) = AddedServiceToCart;
  const factory ServiceCartStates.serviceAlreadyAdded(final List<ServicesEntity> service) = ServiceAlreadyAdded;
  const factory ServiceCartStates.removedServiceFromCart(final List<ServicesEntity> service) = RemovedServiceFromCart;
  const factory ServiceCartStates.serviceCartItems(final List<ServicesEntity> service) = ServiceCartItems;

}
