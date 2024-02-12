import 'package:equatable/equatable.dart';

import '../../../../../../core/shared/entities/order_entity.dart';

class MyOrdersEntity extends Equatable {
  final num? userId;
  final num? orderFilter;
  final List<OrderEntity>? orders;

  const MyOrdersEntity({
    this.userId,
    this.orderFilter,
    this.orders,
  });

  @override
  List<Object?> get props => [
        userId,
        orderFilter,
        orders,
      ];
}
