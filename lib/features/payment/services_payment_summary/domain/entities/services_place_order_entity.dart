import 'package:equatable/equatable.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';


class ServicesPlaceOrderEntity extends Equatable {
  final num? userId;
  final String? latitude;
  final String? longitude;
  final String? address;
  final String? buildingNo;
  final String? flatNo;
  final String? city;
  final String? state;
  final String? note;
  final num? serviceId;
  final num? selectedDayId;
  final String? selectedTime;
  final String? paymentMethod;
  final num? serviceCouponId;
  final num? discountPercentage;
  final num? discountAmount;
  final num? priceAfterDiscount;
  final num? grantTotal;
  final num? status;
  final String? msg;
  final String? paymentLink;
  final ServicesEntity? servicesEntity;

  const ServicesPlaceOrderEntity({
    this.userId,
    this.latitude,
    this.longitude,
    this.address,
    this.buildingNo,
    this.flatNo,
    this.city,
    this.state,
    this.note,
    this.serviceId,
    this.selectedDayId,
    this.selectedTime,
    this.paymentMethod,
    this.serviceCouponId,
    this.discountPercentage,
    this.discountAmount,
    this.priceAfterDiscount,
    this.grantTotal,
    this.status,
    this.msg,
    this.paymentLink,
    this.servicesEntity,
  });

  @override
  List<Object?> get props =>
      [
        userId,
        latitude,
        longitude,
        address,
        buildingNo,
        flatNo,
        city,
        state,
        note,
        serviceId,
        selectedDayId,
        selectedTime,
        paymentMethod,
        status,
        msg,
      ];
}
