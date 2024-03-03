
import '../../domain/entities/package_entity.dart';

class PackageModel extends PackageEntity {
  const PackageModel({
    super.id,
    super.name,
    super.price,
    super.discountPrice,
    super.notes,
    super.expireDate,
  });

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      id: json["id"] ,
      name: json["name"] ,
      price: json["price"] ,
      discountPrice: json["discount_price"],
      notes: json["notes"] ,
      expireDate: json["expire_date"],
    );
  }
}
