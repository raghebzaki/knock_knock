import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';

import '../../../../../core/shared/entities/product_entity.dart';
import '../../domain/use_cases/products_use_case.dart';
import '../../domain/use_cases/services_use_case.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.productsUseCase,required this.servicesUseCase}) : super(const SearchState.initial());
  static SearchCubit get(context) => BlocProvider.of(context);

  final ProductsSearchUseCase productsUseCase;
  searchInProducts(int? nextPage,String? search) async {
    if (nextPage == 1) {
      emit(const SearchState.loading());
    } else {
      emit(const SearchState.paginationLoading());
    }

    final searchInProduct = await productsUseCase( nextPage,search);

    searchInProduct.fold(
          (l) => {
        if (nextPage == 1)
          {
            emit(
              SearchState.error(
                l.code.toString(),
                l.message,
              ),
            ),
          }
        else
          {
            emit(
              SearchState.paginationError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          SearchState.successProducts(r),
        ),
      },
    );
  }

  final ServicesSearchUseCase servicesUseCase;
  searchInServices(String? search,int? nextPage) async {
    if (nextPage == 1) {
      emit(const SearchState.loading());
    } else {
      emit(const SearchState.paginationLoading());
    }

    final searchInService = await servicesUseCase(search,nextPage);

    searchInService.fold(
          (l) => {
        if (nextPage == 1)
          {
            emit(
              SearchState.error(
                l.code.toString(),
                l.message,
              ),
            ),
          }
        else
          {
            emit(
              SearchState.paginationError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          SearchState.successServices(r),
        ),
      },
    );
  }
}
