import 'package:equatable/equatable.dart';
import 'package:knockknock/core/shared/entities/products_images_entity.dart';


class ServicesEntity extends Equatable {
  final num? id;
  final String? nameEn;
  final String? nameAr;
  final num? categoryId;
  final num? subCategoryId;
  final String? descriptionEn;
  final String? descriptionAr;
  final String? code;
  final String? price;
  final int? discountPercent;
  final String? priceAfterDiscount;
  final String? image;
  final num? quantity;
  late  num? userQuantity;
  final List<ProductsImagesEntity>? images;
  final List<String>? imagesBase64;
  final String? status;
  final String? message;

  ServicesEntity({
    this.nameEn,
    this.nameAr,
    this.subCategoryId,
    this.descriptionEn,
    this.descriptionAr,
    this.code,
    this.priceAfterDiscount,
    this.image,
    this.imagesBase64,
    this.quantity,
    this.userQuantity = 1,
    this.id,
    this.categoryId,
    this.price,
    this.discountPercent,
    this.images,
    this.status,
    this.message,
  });

  @override
  List<Object?> get props => [
    id,
    nameEn,
    nameAr,
    categoryId,
    subCategoryId,
    descriptionEn,
    descriptionAr,
    code,
    price,
    discountPercent,
    priceAfterDiscount,
    image,
    imagesBase64,
    quantity,
    userQuantity,

    images,
    status,
    message,
  ];
}
