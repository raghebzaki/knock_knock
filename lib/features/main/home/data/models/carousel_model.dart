
import '../../domain/entities/carousel_entity.dart';

class CarouselModel extends CarouselEntity {
  const CarouselModel({
    super.id,
    super.titleAr,
    super.titleEn,
    super.image,
  });

  factory CarouselModel.fromJson(Map<String, dynamic> json) {
    return CarouselModel(
      id: json["id"] ,
      titleAr: json["title_ar"] ,
      titleEn: json["title_en"] ,
      image: json["slider"],
    );
  }
}
