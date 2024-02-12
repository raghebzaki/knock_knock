import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../../domain/repositories/contact_us_repo.dart';
import '../data_sources/contact_us_service.dart';


class ContactUsRepoImpl implements ContactUsRepo {
  final ContactUsService contactUsService;

  ContactUsRepoImpl(this.contactUsService);


  @override
  Future<Either<Failure, ContactUsEntity>> sendMessage(ContactUsEntity contactUsEntity) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getContracts = await contactUsService.sendMessage(contactUsEntity);
        return right(getContracts);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}