
import '../entities/products_images_entity.dart';

class ProductsImagesModel extends ProductsImagesEntity{
  const ProductsImagesModel({
    super.id,
    super.image,
  });

  factory ProductsImagesModel.fromJson(Map<String, dynamic> json) {
    return ProductsImagesModel(
      id: json["id"] ,
      image: json["image"],
    );
  }
}