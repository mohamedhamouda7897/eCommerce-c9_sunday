import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/repositories/home_domain_repo.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/entities/ProductEntity.dart';

class GetProduct {
  HomeDomainRepo homeDomainRepo;

  GetProduct(this.homeDomainRepo);

  Future<Either<Failures, ProductEntity>> call() => homeDomainRepo.getProduct();
}
