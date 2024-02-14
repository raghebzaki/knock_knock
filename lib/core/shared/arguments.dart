
import 'package:geocoding/geocoding.dart';

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

  AddresAedgs({required this.address});
}