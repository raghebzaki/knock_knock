import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/contact_us_entity.dart';


abstract class ContactUsRepo {
  Future<Either<Failure,ContactUsEntity>> sendMessage(ContactUsEntity contactUsEntity);

}
