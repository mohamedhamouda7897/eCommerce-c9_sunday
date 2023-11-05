import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/entities/ProductEntity.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/repositories/home_domain_repo.dart';

class HomeDataRepo implements HomeDomainRepo {
  @override
  Future<Either<Failures, ProductEntity>> getProduct() {
    // TODO: implement getProduct
    throw UnimplementedError();
  }
}
