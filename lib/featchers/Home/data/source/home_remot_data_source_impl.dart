import 'package:app2/core/Error/failure.dart';
import 'package:app2/core/network/api_request.dart';
import 'package:app2/core/network/api_response.dart';
import 'package:app2/core/network/app_urls.dart';
import 'package:app2/core/network/general_api.dart';
import 'package:app2/core/network/slider_model.dart';
import 'package:app2/featchers/Home/data/model/Product_model.dart';
import 'package:app2/featchers/Home/data/model/branch_model.dart';
import 'package:app2/featchers/Home/data/model/nearest_model.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source.dart';
import 'package:dartz/dartz.dart';

class HomeRemotDataSourceImpl implements HomeRemotDataSource {
  final API api;

  HomeRemotDataSourceImpl({required this.api});
  //!_____________getTopSalon________________________________________________________
  @override
  Future<Either<Failure, List<BranchModel>>> getTopSalon() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getTopSalon);
      final ApiResponse response = await api.get(request);

      final List<BranchModel> topSuppliersList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          topSuppliersList.add(BranchModel.fromMap(item));
        }

        return Right(topSuppliersList);
      } else {
        return Left(Failure(
            message: response.body['message'].toString(),
            statusCode: response.statusCode));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________getNearest________________________________________________________
  @override
  Future<Either<Failure, List<NearestModel>>> getNearest() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearest);
      final ApiResponse response = await api.get(request);
      final List<NearestModel> nearestList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          nearestList.add(NearestModel.fromMap(item));
        }
        return Right(nearestList);
      } else {
        return Left(Failure(
            statusCode: response.statusCode,
            message: response.body['message'].toString()));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//!_____________getnear Suppliers fetch All________________________________________________________
  @override
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchAll() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearest);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> allList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          allList.add(NearestModel.fromMap(item));
        }
        return Right(allList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//!_____________getnear Suppliers fetch Salon________________________________________________________
  @override
  Future<Either<Failure, List<NearestModel>>>
      getnearSuppliersFetchSalon() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearestFetchSalon);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> salonList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          salonList.add(NearestModel.fromMap(item));
        }
        return Right(salonList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//!_____________getnear Suppliers fetch Freelance________________________________________________________
  @override
  Future<Either<Failure, List<NearestModel>>>
      getnearSuppliersFetchFreelance() async {
    try {
      final ApiRequest request =
          ApiRequest(url: AppUrls.getNearestFetchFreelance);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> freelanceList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          freelanceList.add(NearestModel.fromMap(item));
        }
        return Right(freelanceList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________get Slider________________________________________________________
  @override
  getSlider() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getSliders);
      final ApiResponse response = await api.get(request);

      if (response.statusCode == 200) {
        final data = response.body['data'] as List;
        final sliders = data.map((item) => SliderModel.fromJson(item)).toList();

        return Right(sliders);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________get Products ________________________________________________________
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getProducts);
      final ApiResponse response = await api.get(request);
      final List<ProductModel> listitem = [];
      if (response.statusCode == 200) {
        for (var element in response.body['data']) {
          listitem.add(ProductModel.fromMap(element));
        }
        return Right(listitem);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (e) {
      return Left(Failure(statusCode: -1, message: "Unexpected error: $e"));
    }
  }

  //!_____________get Services ________________________________________________________

  @override
  Future<Either<Failure, List<ServiceModel>>> getServices() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> serviceList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          serviceList.add(ServiceModel.fromMap(item));
        }
        return Right(serviceList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(Failure(
        statusCode: -1,
        message: "Unexpected error: $exception",
      ));
    }
  }

//!_____________getnear Services fetch All________________________________________________________
  @override
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchAll() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> services = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          services.add(ServiceModel.fromMap(item));
        }
        return Right(services);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________getnear Services fetch Freelance________________________________________________________

  @override
  Future<Either<Failure, List<ServiceModel>>>
      getServicesFetchFreelance() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> providerServices = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          if (item['type'] == 2) {
            providerServices.add(ServiceModel.fromMap(item));
          }
        }
        return Right(providerServices);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________getnear Services fetch Salon________________________________________________________
  @override
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchSalon() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> storeServices = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          if (item['type'] == 1) {
            storeServices.add(ServiceModel.fromMap(item));
          }
        }
        return Right(storeServices);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //!_____________getnearSuppliers fetch All________________________________________________________
  //!_____________getnearSuppliers fetch All________________________________________________________
  //!_____________getnearSuppliers fetch All________________________________________________________
  //!_____________getnearSuppliers fetch All________________________________________________________
}
