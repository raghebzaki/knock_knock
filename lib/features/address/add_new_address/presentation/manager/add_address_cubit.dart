import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/database/address_class.dart';
import '../../../../../../core/database/database_hive.dart';

part 'add_address_state.dart';

part 'add_address_cubit.freezed.dart';

class AddAddressCubit extends Cubit<AddAddressStates> {
  AddAddressCubit({required this.hiveDatabase})
      : super(const AddAddressStates.initial());

  static AddAddressCubit get(BuildContext context) => BlocProvider.of(context);

  final HiveDatabase hiveDatabase;

  addAddress(Address address) async {
    emit(
      const AddAddressStates.loading(),
    );

    try {
      await hiveDatabase.addAddress(address);
      const AddAddressStates.success();
    } catch (err) {
      emit(
        AddAddressStates.error(
          err.toString(),
        ),
      );
    }
  }
}
