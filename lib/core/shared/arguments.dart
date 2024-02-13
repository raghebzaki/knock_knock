
import 'package:geocoding/geocoding.dart';

import 'entities/order_entity.dart';

class VerifyAccountArgs {
  final String email;

  VerifyAccountArgs({required this.email});
}

class ResetPassArgs {
  final String email;

  ResetPassArgs({required this.email});
}

class ChangePassArgs {
  final String email;

  ChangePassArgs({required this.email});
}


class OrderDetailsArgs {
  final OrderEntity orderDetails;

  OrderDetailsArgs({required this.orderDetails});

}

class AddressArgs {
  final Placemark address;

  AddressArgs({required this.address});
}