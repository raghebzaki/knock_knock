import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/models/product_model.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';

abstract class ProductsService {
  Future<List<ProductModel>> getAllProducts(int? nextPage,num? categoryId);
}

class ProductsServiceImpl implements ProductsService {

  @override
  Future<List<ProductModel>> getAllProducts(int? nextPage,num? categoryId) async {

    Dio dio = await DioFactory.getDio();
    List<ProductModel> productsList = [];

    final contracts = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.productsUri,
      data: {
        "category_id":categoryId,
      },
      queryParameters: {
        "page": nextPage,
      },
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data']['data'];
      productsList = List<ProductModel>.from(
        l.map(
              (model) => ProductModel.fromJson(model),
        ),
      );
    }

    return productsList;
  }

}
