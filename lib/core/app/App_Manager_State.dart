// ignore_for_file: file_names

import 'dart:ui';

import 'package:app2/featchers/auth/data/models/auth_response_model.dart';

class AppManagerState {
  bool isDarkMode = false;
  final bool isLogOutSuccess;
  final AuthResponseModel? authResponseModel;
  final String? myLocation;
  final Locale? appLocale;
  AppManagerState({
    this.myLocation,
    this.isDarkMode = false,
    this.isLogOutSuccess = false,
    this.authResponseModel,
    this.appLocale,
  });

  AppManagerState copyWith({
    bool? isDarkMode,
    bool? isLogOutSuccess,
    AuthResponseModel? authResponseModel,
    String? myLocation,
    Locale? appLocale,
  }) {
    return AppManagerState(
      myLocation: myLocation ?? this.myLocation,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isLogOutSuccess: isLogOutSuccess ?? this.isLogOutSuccess,
      authResponseModel: authResponseModel ?? this.authResponseModel,
      appLocale: appLocale ?? this.appLocale,
    );
  }
}
