// ignore_for_file: file_names

import 'package:app2/core/network/app_dio.dart';
import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source_impl.dart';
import 'package:get_it/get_it.dart';

final getInstance = GetIt.instance;

initDependencyInjection() {
  getInstance.registerLazySingleton<AppDio>(() => AppDio());

  getInstance
      .registerLazySingleton<API>(() => API(dio: getInstance<AppDio>().dio));

  getInstance.registerLazySingleton<HomeRemotDataSource>(
      () => HomeRemotDataSourceImpl(api: getInstance<API>()));
}
