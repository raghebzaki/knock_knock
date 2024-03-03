import 'package:equatable/equatable.dart';

class PackageEntity extends Equatable {
  final num? id;
  final String? name;
  final String? price;
  final String? discountPrice;
  final String? notes;
  final String? expireDate;

  const PackageEntity(
      {this.id, this.name, this.price, this.discountPrice, this.notes, this.expireDate,});

  @override
  List<Object?> get props =>
      [id, name, price, discountPrice, notes, expireDate,];
}
