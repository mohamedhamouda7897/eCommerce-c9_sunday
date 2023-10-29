import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/data_sources/remote/sign_up_remote_ds.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/repositories/signup_repo.dart';

import '../../../../core/error/failures.dart';
import '../models/request_model.dart';

class SignupRepoImpl implements SignUpRepo {
  SignUpRemoteDS remoteDS;

  SignupRepoImpl(
    this.remoteDS,
  );

  @override
  Future<Either<Failures, UserEntity>>? signUp(RequestModel requestModel) {
    try {
      return remoteDS.signUp(requestModel);
    } catch (e) {
      print(e.toString());
      throw Exception();
    }
  }
}
