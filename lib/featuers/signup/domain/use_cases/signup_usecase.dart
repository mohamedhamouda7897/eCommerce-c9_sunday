import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/repositories/signup_repo.dart';

import '../../data/models/request_model.dart';

class SignUpUseCase {
  SignUpRepo signUpRepo;

  SignUpUseCase(this.signUpRepo);

  Future<Either<Failures, UserEntity>>? call(RequestModel requestModel) =>
      signUpRepo.signUp(requestModel);
}
