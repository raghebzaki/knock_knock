import 'package:equatable/equatable.dart';

class ProductsCategoryEntity extends Equatable {
  final num? id;
  final String? nameEn;
  final String? nameAr;
  final String? image;

  const ProductsCategoryEntity({this.id, this.nameEn,this.nameAr, this.image});

  @override
  List<Object?> get props => [id, nameEn,nameAr, image];
}
