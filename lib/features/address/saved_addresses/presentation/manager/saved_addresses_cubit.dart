import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/database/address_class.dart';
import '../../../../../core/database/database_hive.dart';

part 'saved_addresses_states.dart';
part 'saved_addresses_cubit.freezed.dart';

class SavedAddressesCubit extends Cubit<SavedAddressesStates> {
  SavedAddressesCubit({required this.hiveDatabase}) : super(const SavedAddressesStates.initial());

  final HiveDatabase hiveDatabase;

  getAddresses() async {
    emit(
      const SavedAddressesStates.loading(),
    );

    try {
      var addresses = await hiveDatabase.getAllAddresses();
      emit(SavedAddressesStates.success(addresses));
    } catch (err) {
      emit(
        SavedAddressesStates.error(
          err.toString(),
        ),
      );
    }
  }
}
