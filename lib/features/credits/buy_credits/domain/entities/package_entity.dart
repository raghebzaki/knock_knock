import 'package:equatable/equatable.dart';

class PackageEntity extends Equatable {
  final num? id;
  final String? nameAr;
  final String? nameEn;
  final String? price;
  final String? discountPrice;
  final String? notesAr;
  final String? notesEn;
  final String? expireDate;

  const PackageEntity(
      {this.id, this.price, this.discountPrice, this.expireDate, this.nameAr, this.nameEn, this.notesAr, this.notesEn,});

  @override
  List<Object?> get props =>
      [id, nameAr, nameEn, price, discountPrice, notesAr, notesEn, expireDate,];
}
