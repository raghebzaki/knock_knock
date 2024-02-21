// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:knockknock/core/shared/entities/products_images_entity.dart';

class ProductEntity extends Equatable {
  final num? id;
  final String? nameEn;
  final String? nameAr;
  final num? categoryId;
  final String? descriptionEn;
  final String? descriptionAr;
  final int? code;
  final String? price;
  final int? discountPercent;
  final String? priceAfterDiscount;
  final String? image;
  final String? quantity;
  late  num? userQuantity;
  final List<ProductsImagesEntity>? images;
  final String? status;
  final String? message;

   ProductEntity({
    this.nameEn,
    this.nameAr,
    this.descriptionEn,
    this.descriptionAr,
    this.code,
    this.priceAfterDiscount,
    this.image,
    this.images,
    this.quantity,
    this.userQuantity = 1,
    this.id,
    this.categoryId,
    this.price,
    this.discountPercent,
    this.status,
    this.message,
  });

  @override
  List<Object?> get props => [
        id,
        nameEn,
        nameAr,
        categoryId,
        descriptionEn,
        descriptionAr,
        code,
        price,
        discountPercent,
        priceAfterDiscount,
        image,
        images,
        quantity,
        userQuantity,
        status,
        message,
      ];
}
