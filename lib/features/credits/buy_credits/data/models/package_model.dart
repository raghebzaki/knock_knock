
import '../../domain/entities/package_entity.dart';

class PackageModel extends PackageEntity {
  const PackageModel({
    super.id,
    super.nameAr,
    super.nameEn,
    super.price,
    super.discountPrice,
    super.notesAr,
    super.notesEn,
    super.expireDate,
  });

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      id: json["id"] ,
      nameEn: json["name_en"] ,
      nameAr: json["name_ar"] ,
      price: json["price"] ,
      discountPrice: json["discount_price"],
      notesEn: json["notes_en"] ,
      notesAr: json["notes_ar"] ,
      expireDate: json["expire_date"],
    );
  }
}
