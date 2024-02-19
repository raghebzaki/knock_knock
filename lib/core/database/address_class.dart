import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

part 'address_class.g.dart';

@HiveType(typeId: 0)
class Address extends Equatable {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? address;
  @HiveField(2)
  final String? building;
  @HiveField(3)
  final String? flat;
  @HiveField(4)
  final String? country;
  @HiveField(5)
  final String? city;
  @HiveField(6)
  final String? code;
  @HiveField(7)
  final double? latitude;
  @HiveField(8)
  final double? longitude;

  Address({
    this.address,
    this.building,
    this.flat,
    this.country,
    this.city,
    this.code,
    this.latitude,
    this.longitude,
  }) : id = const Uuid().v4();

  @override
  List<Object?> get props => [
        id,
        address,
        building,
        flat,
        country,
        city,
        code,
        latitude,
        longitude,
      ];
}
