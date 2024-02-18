
import '../../domain/entities/products_category_entity.dart';

class ProductsCategoryModel extends ProductsCategoryEntity {
  const ProductsCategoryModel({
    super.id,
    super.name,
    super.image,
  });

  factory ProductsCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductsCategoryModel(
      id: json["id"] ,
      name: json["name"] ,
      image: json["image"],
    );
  }
}
