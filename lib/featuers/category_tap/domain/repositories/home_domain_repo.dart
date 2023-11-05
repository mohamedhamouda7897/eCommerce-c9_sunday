import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/entities/ProductEntity.dart';

abstract class HomeDomainRepo {
  Future<Either<Failures, ProductEntity>> getProduct();
}
