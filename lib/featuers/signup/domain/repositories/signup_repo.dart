import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/entities/UserEntity.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/request_model.dart';

abstract class SignUpRepo {
  Future<Either<Failures, UserEntity>>? signUp(RequestModel requestModel);
}
