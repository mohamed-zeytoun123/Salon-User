// ignore_for_file: file_names

import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:app2/core/app/app_manager_state.dart';
import 'package:app2/core/constant/cache_keys.dart';
import 'package:app2/featchers/auth/data/models/auth_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerState());
  //!________ save User Data In App State______________________________________________________________________________

  saveUserDataInAppState(AuthResponseModel model) {
    _saveAuthModelInCache(model);
    emit(state.copyWith(authResponseModel: model));
  }

  //!________ init App ______________________________________________________________________________

  initApp() async {
    log('init app');

    final storage = FlutterSecureStorage();
    final langCode = await storage.read(key: CacheKeys.appLanguage);
    final savedLocale = langCode != null ? Locale(langCode) : null;

    final authDataFromCache = await _getUserData();

    emit(state.copyWith(
      authResponseModel: authDataFromCache,
      appLocale: savedLocale,
    ));

    if (authDataFromCache != null) {
      log('user data found');
    }
  }

//!_______________save Auth Model In Cache________________________________________________________________________
  _saveAuthModelInCache(AuthResponseModel authData) async {
    final storage = FlutterSecureStorage();

    final encodedData = jsonEncode(authData.toJson());

    await storage.write(key: CacheKeys.userData, value: encodedData);
  }
  //!_____________get User Data__________________________________________________________________________

  Future<AuthResponseModel?> _getUserData() async {
    final storage = FlutterSecureStorage();
    final result = await storage.read(key: CacheKeys.userData);
    if (result != null) {
      final decodedData = jsonDecode(result);
      final userData = AuthResponseModel.fromJson(decodedData);
      return userData;
    }
    return null;
  }

  //!___________change Location___________________________________________________________________________
  changeLocation(String newLocation) {
    emit(state.copyWith(myLocation: newLocation));
  }

  //!___________change Language___________________________________________________________________________
  changeLanguage(Locale newLocale) async {
    final storage = FlutterSecureStorage();
    await storage.write(
        key: CacheKeys.appLanguage, value: newLocale.languageCode);
    emit(state.copyWith(appLocale: newLocale));
  }

  //!____________logout__________________________________________________________________________
  logout() async {
    final storage = FlutterSecureStorage();
    await storage.delete(key: CacheKeys.userData);
    await storage.delete(key: CacheKeys.appLanguage);

    emit(state.copyWith(
      authResponseModel: null,
      appLocale: null,
      myLocation: null,
    ));
    log('User logged out and data cleared');
  }

  //!______________________________________________________________________________________
}
