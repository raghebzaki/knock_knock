
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';

import 'entities/order_entity.dart';

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
  final OrderEntity orderDetails;

  OrderDetailAedgs({required this.orderDetails});

}

class AddresAedgs {
  final Placemark address;
  final LatLng latLng;

  AddresAedgs({required this.latLng, required this.address});
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