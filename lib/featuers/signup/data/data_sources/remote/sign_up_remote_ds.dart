import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import '../../../domain/entities/UserEntity.dart';
import '../../models/request_model.dart';

abstract class SignUpRemoteDS {
  Future<Either<Failures, UserEntity>>? signUp(RequestModel requestModel);
}
