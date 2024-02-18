import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../models/products_category_model.dart';

abstract class ProductsCategoryService {
  Future<List<ProductsCategoryModel>> getAllProductsCategory();
}

class ProductsCategoryServiceImpl implements ProductsCategoryService {

  @override
  Future<List<ProductsCategoryModel>> getAllProductsCategory() async {

    Dio dio = await DioFactory.getDio();
    List<ProductsCategoryModel> productsList = [];

    final contracts = await dio.get(
      AppConstants.apiBaseUrl + AppConstants.productsCategoryUri,
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data'];
      productsList = List<ProductsCategoryModel>.from(
        l.map(
              (model) => ProductsCategoryModel.fromJson(model),
        ),
      );
    }

    return productsList;
  }


}
