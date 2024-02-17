import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';

import '../../domain/use_cases/services_use_case.dart';

part 'services_state.dart';
part 'services_cubit.freezed.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit(this.servicesUseCase) : super(const ServicesState.initial());
  static ServicesCubit get(context) => BlocProvider.of(context);

  final ServicesUseCase servicesUseCase;

  getAllProducts(int? nextPage) async {
    if (nextPage == 1) {
      emit(const ServicesState.loading());
    } else {
      emit(const ServicesState.paginationLoading());
    }

    final getAllProduct = await servicesUseCase(nextPage);

    getAllProduct.fold(
          (l) => {
        if (nextPage == 1)
          {
            emit(
              ServicesState.error(
                l.code.toString(),
                l.message,
              ),
            ),
          }
        else
          {
            emit(
              ServicesState.paginationError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          ServicesState.success(r),
        ),
      },
    );
  }
}
