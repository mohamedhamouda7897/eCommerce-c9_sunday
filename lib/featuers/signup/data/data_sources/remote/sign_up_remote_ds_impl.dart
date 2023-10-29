import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_c9_sunday/core/api/api_manager.dart';
import 'package:e_commerce_c9_sunday/core/api/end_points.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/data_sources/remote/sign_up_remote_ds.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/models/UserModel.dart';

import '../../../../../core/error/failures.dart';
import '../../../domain/entities/UserEntity.dart';
import '../../models/request_model.dart';

class SignUpRemoteDSImpl implements SignUpRemoteDS {
  ApiManager apiManager;

  SignUpRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserEntity>>? signUp(
      RequestModel requestModel) async {
    try {
      print(requestModel.toJson());
      Response response =
          await apiManager.postData(EndPoints.signUp, requestModel.toJson());

      print(response.data);
      UserModel userModel = UserModel.fromJson(response.data);
      print(userModel.user?.name);
      return Right(userModel);
    } catch (e) {
      print(e.toString());
      return Left(RemoteFailure(e.toString()));
    }
  }
}
