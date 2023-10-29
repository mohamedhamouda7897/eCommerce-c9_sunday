import 'package:e_commerce_c9_sunday/featuers/signup/domain/entities/UserEntity.dart';

class UserModel extends UserEntity {
  UserModel({
    this.message,
    super.user,
    super.token,
  });

  UserModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserDataModel.fromJson(json['user']) : null;
    token = json['token'];
  }

  String? message;

  @override
  // TODO: implement props
  List<Object?> get props => [super.props, message];
}

class UserDataModel extends UserDataEntity {
  UserDataModel({
    super.name,
    super.email,
    this.role,
  });

  UserDataModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }

  String? role;

  @override
  // TODO: implement props
  List<Object?> get props => [super.props, role];
}
