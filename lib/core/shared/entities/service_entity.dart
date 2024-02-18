import 'package:equatable/equatable.dart';


class ServicesEntity extends Equatable {
  final num? id;
  final String? nameEn;
  final String? nameAr;
  final num? serviceCategoryId;
  final String? descriptionEn;
  final String? descriptionAr;
  final String? sku;
  final String? price;
  final String? availability;
  final String? image;
  final String? status;
  final String? message;

  const ServicesEntity({
    this.nameEn,
    this.nameAr,
    this.serviceCategoryId,
    this.descriptionEn,
    this.descriptionAr,
    this.sku,
    this.availability,
    this.image,
    this.id,
    this.price,
    this.status,
    this.message,
  });

  @override
  List<Object?> get props => [
    id,
    nameEn,
    nameAr,
    serviceCategoryId,
    descriptionEn,
    descriptionAr,
    sku,
    price,
    availability,
    image,
    status,
    message,
  ];
}
