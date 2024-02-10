import 'package:hive/hive.dart';

import 'address_class.dart';

class HiveDatabase {
  final String boxName = "AddressDataBase";

  Future<Box<Address>> get addressBox async => await Hive.openBox<Address>(boxName);

  Future<void> addAddress(Address address) async {
    var box = await addressBox;
    await box.add(address);
  }

  Future<List<Address>> getAllAddresses() async {
    var box = await addressBox;
    return box.values.toList();
  }

  Future<void> deleteAddress(int index) async {
    var box = await addressBox;
    box.deleteAt(index);
  }

  Future<void> getAt(int index) async {
    var box = await addressBox;
    box.getAt(index);
  }
}
