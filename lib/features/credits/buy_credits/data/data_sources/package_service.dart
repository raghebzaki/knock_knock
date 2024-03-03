import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../models/package_model.dart';

abstract class PackageService {
  Future<List<PackageModel>> getAllPackage();
}

class PackageServiceImpl implements PackageService {

  @override
  Future<List<PackageModel>> getAllPackage() async {

    Dio dio = await DioFactory.getDio();
    List<PackageModel> packageList = [];

    final contracts = await dio.get(
      AppConstants.apiBaseUrl + AppConstants.getPackagesUri,
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data'];
      packageList = List<PackageModel>.from(
        l.map(
              (model) => PackageModel.fromJson(model),
        ),
      );
    }

    return packageList;
  }


}
