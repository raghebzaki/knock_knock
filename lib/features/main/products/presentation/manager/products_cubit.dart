import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/shared/entities/product_entity.dart';
import '../../../search/domain/use_cases/products_use_case.dart';
import '../../domain/use_cases/products_use_case.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsUseCase, this.productsSearchUseCase) : super(const ProductsState.initial());

  static ProductsCubit get(context) => BlocProvider.of(context);

  final ProductsUseCase productsUseCase;

  getAllProducts(int? nextPage,num categoryId) async {
    if (nextPage == 1) {
      emit(const ProductsState.loading());
    } else {
      emit(const ProductsState.paginationLoading());
    }

    final getAllProduct = await productsUseCase( nextPage,categoryId);

    getAllProduct.fold(
          (l) => {
        if (nextPage == 1)
          {
            emit(
              ProductsState.error(
                l.code.toString(),
                l.message,
              ),
            ),
          }
        else
          {
            emit(
              ProductsState.paginationError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          ProductsState.success(r),
        ),
      },
    );
  }

  final ProductsSearchUseCase productsSearchUseCase;
  searchInProducts(int? nextPage,String? search) async {
    if (nextPage == 1) {
      emit(const ProductsState.loading());
    } else {
      emit(const ProductsState.searchLoading());
    }

    final searchInProduct = await productsSearchUseCase(nextPage,search);

    searchInProduct.fold(
          (l) => {
        if (nextPage == 1)
          {
            emit(
              ProductsState.error(
                l.code.toString(),
                l.message,
              ),
            ),
          }
        else
          {
            emit(
              ProductsState.searchError(
                l.code.toString(),
                l.message,
              ),
            ),
          }
      },
          (r) => {
        emit(
          ProductsState.searchSuccess(r),
        ),
      },
    );
  }

}
