import 'package:knockknock/core/shared/models/products_images_model.dart';

import '../entities/product_entity.dart';

class ProductModel extends ProductEntity {
   ProductModel({
    super.id,
    super.nameAr,
    super.nameEn,
    super.categoryId,
    super.subCategoryId,
    super.descriptionEn,
    super.descriptionAr,
    super.price,
    super.discountPercent,
    super.code,
    super.image,
    super.imagesBase64,
    super.priceAfterDiscount,
    super.quantity,
    super.userQuantity,
    super.images,
    super.status,
    super.message,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      nameAr: json["name_ar"],
      nameEn: json["name_en"],
      categoryId: json["category_id"],
      subCategoryId: json["sub_category_id"],
      descriptionAr: json["description_ar"],
      descriptionEn: json["description_en"],
      code: json["postalCode"],
      price: json["price"],
      discountPercent: json["discount_percentage"] ?? 0,
      priceAfterDiscount: json["price_after_discount"],
      image: json["image"],
      quantity: json["quantity"],
      images: json["product_images"] == null
          ? []
          : List<ProductsImagesModel>.from(json["product_images"]!
              .map((x) => ProductsImagesModel.fromJson(x))),
    );
  }

  factory ProductModel.addProductFromJson(Map<String, dynamic> json) {
    return ProductModel(
      status: json["status"],
      message: json["message"],
    );
  }

  static Map<String, dynamic> addProductToJson(ProductEntity productEntity) {
    return {
      'id': productEntity.id,
      'name': productEntity.nameAr,
      'category_id': productEntity.categoryId,
      'description': productEntity.descriptionAr,
      'price': productEntity.price,
      'discount_percent': productEntity.discountPercent,
      'image': productEntity.image,
      'images': productEntity.imagesBase64,
    };
  }
}

