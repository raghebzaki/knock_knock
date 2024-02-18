
import '../../domain/entities/products_category_entity.dart';

class ProductsCategoryModel extends ProductsCategoryEntity {
  const ProductsCategoryModel({
    super.id,
    super.nameEn,
    super.nameAr,
    super.image,
  });

  factory ProductsCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductsCategoryModel(
      id: json["id"] ,
      nameEn: json["name_en"] ,
      nameAr: json["name_ar"] ,
      image: json["image"],
    );
  }
}
