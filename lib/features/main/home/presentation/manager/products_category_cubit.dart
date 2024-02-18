import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/products_category_entity.dart';
import '../../domain/use_cases/products_category_use_case.dart';

part 'products_category_state.dart';
part 'products_category_cubit.freezed.dart';

class ProductsCategoryCubit extends Cubit<ProductsCategoryState> {
  ProductsCategoryCubit(this.productsCategoryUseCase) : super(const ProductsCategoryState.initial());
  static ProductsCategoryCubit get(context) => BlocProvider.of(context);

  final ProductsCategoryUseCase productsCategoryUseCase;

  getProductsCategory() async {
    emit(const ProductsCategoryState.loading());




    final getAllProductsCategory = await productsCategoryUseCase();

    getAllProductsCategory.fold(
          (l) => {
        emit(
          ProductsCategoryState.error(
            l.code.toString(),
            l.message,
          ),
        )
      },
          (r) => {
        emit(
          ProductsCategoryState.success(r),
        ),
      },
    );
  }
}
