import 'package:knockknock/core/shared/entities/service_entity.dart';


class ServicesModel extends ServicesEntity {
   const ServicesModel({
    super.id,
    super.nameAr,
    super.nameEn,
    super.serviceCategoryId,
    super.descriptionEn,
    super.descriptionAr,
    super.price,
    super.sku,
    super.image,
    super.availability,
    super.status,
    super.message,
  });

  factory ServicesModel.fromJson(Map<String, dynamic> json) {
    return ServicesModel(
      id: json["id"],
      nameAr: json["name_ar"],
      nameEn: json["name_en"],
      serviceCategoryId: json["service_category_id"],
      descriptionAr: json["description_ar"],
      descriptionEn: json["description_en"],
      sku: json["sku"],
      availability: json["availability"]??"",
      price: json["price"],
      image: json["image"],

    );
  }
}

