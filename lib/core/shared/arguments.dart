
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:knockknock/core/database/address_class.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';
import 'package:knockknock/features/payment/services_payment_summary/domain/entities/services_place_order_entity.dart';

import '../../features/orders/products/my_products_orders/domain/entities/products_order_entity.dart';
import '../../features/orders/services/my_services_orders/domain/entities/services_order_entity.dart';

class VerifyAccountArgs {
  final String email;

  VerifyAccountArgs({required this.email});
}

class ResetPasAedgs {
  final String email;

  ResetPasAedgs({required this.email});
}

class ChangePasAedgs {
  final String email;

  ChangePasAedgs({required this.email});
}


class OrderDetailAedgs {
  final ProductsOrderEntity orderDetails;

  OrderDetailAedgs({required this.orderDetails});

}
class ServicesOrderDetailArgs {
  final ServicesOrderEntity orderDetails;

  ServicesOrderDetailArgs({required this.orderDetails});

}

class AddressArgs {
  final Placemark address;
  final LatLng latLng;

  AddressArgs({required this.latLng, required this.address});
}
class ServicesArgs {
  final ServicesEntity servicesEntity;

  ServicesArgs({required this.servicesEntity});
}
class ProductsArgs {
  final num categoryId;

  ProductsArgs({required this.categoryId});
}
class ProductArgs {
  final ProductEntity productEntity;

  ProductArgs({required this.productEntity});
}

class ServicesSummaryArgs {
  final List<ServicesPlaceOrderEntity> servicesPlaceOrderEntity;

  ServicesSummaryArgs({required this.servicesPlaceOrderEntity});
}
class ProductAddressArgs {
  final Address address;

  ProductAddressArgs({ required this.address});
}