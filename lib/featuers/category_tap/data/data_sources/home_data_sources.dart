import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/featuers/category_tap/data/models/ProductModel.dart';
import '../../../../core/error/failures.dart';

abstract class HomeDataSources {
  Future<Either<Failures, ProductModel>> getProduct();
}


