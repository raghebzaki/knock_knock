import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/credits/buy_credits/domain/entities/package_entity.dart';

import '../../domain/use_cases/package_use_case.dart';

part 'package_state.dart';
part 'package_cubit.freezed.dart';

class PackageCubit extends Cubit<PackageState> {
  PackageCubit({required this.packageUseCase}) : super(const PackageState.initial());

  static PackageCubit get(context) => BlocProvider.of(context);

  final PackageUseCase packageUseCase;

  getAllPackage() async {
    emit(const PackageState.loading());

    final getAllPackage = await packageUseCase();

    getAllPackage.fold(
          (l) => {
        emit(
          PackageState.error(
            l.code.toString(),
            l.message,
          ),
        )
      },
          (r) => {
        emit(
          PackageState.success(r),
        ),
      },
    );
  }
}
