import 'package:app2/core/Error/Failure.dart';
import 'package:app2/core/network/slider_model.dart';
import 'package:app2/featchers/Home/data/model/Product_model.dart';
import 'package:app2/featchers/Home/data/model/branch_model.dart';
import 'package:app2/featchers/Home/data/model/nearest_model.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRemotDataSource {
  Future<Either<Failure, List<BranchModel>>> getTopSalon();
  Future<Either<Failure, List<NearestModel>>> getNearest();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchAll();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchSalon();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchFreelance();
  Future<Either<Failure, List<SliderModel>>> getSlider();
  Future<Either<Failure, List<ProductModel>>> getProducts();
  Future<Either<Failure, List<ServiceModel>>> getServices();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchAll();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchSalon();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchFreelance();
}
