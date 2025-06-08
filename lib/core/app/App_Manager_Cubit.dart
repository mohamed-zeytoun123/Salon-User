// ignore_for_file: file_names

import 'dart:convert';
import 'dart:developer';

import 'package:app2/core/app/App_Manager_State.dart';
import 'package:app2/core/constant/Cache_Keys.dart';
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

    final AuthResponseModel? authDataFromCache = await _getUserData();
    if (authDataFromCache != null) {
      emit(state.copyWith(authResponseModel: authDataFromCache));
      log('user data found ');
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

  //!______________________________________________________________________________________
  changeLocation(String newLocation) {
    emit(state.copyWith(myLocation: newLocation));
  }
  //!______________________________________________________________________________________
  //!______________________________________________________________________________________
  //!______________________________________________________________________________________
}
