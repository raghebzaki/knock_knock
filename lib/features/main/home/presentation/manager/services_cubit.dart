import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';

import '../../../search/domain/use_cases/services_use_case.dart';
import '../../domain/use_cases/services_use_case.dart';

part 'services_state.dart';
part 'services_cubit.freezed.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit(this.servicesUseCase, this.servicesSearchUseCase) : super(const ServicesState.initial());
  static ServicesCubit get(context) => BlocProvider.of(context);

  final ServicesUseCase servicesUseCase;

  getAllServices(int? nextPage) async {
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

  final ServicesSearchUseCase servicesSearchUseCase;
  searchInServices(String? search,int? nextPage) async {
    if (nextPage == 1) {
      emit(const ServicesState.loading());
    } else {
      emit(const ServicesState.searchLoading());
    }

    final searchInService = await servicesSearchUseCase(search,nextPage);

    searchInService.fold(
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
              ServicesState.searchError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          ServicesState.searchSuccess(r),
        ),
      },
    );
  }

}
