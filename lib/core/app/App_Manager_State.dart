// ignore_for_file: file_names

import 'package:app2/featchers/auth/data/models/auth_response_model.dart';

class AppManagerState {
  bool isDarkMode = false;
  final bool isLogOutSuccess;
  final AuthResponseModel? authResponseModel;
  final String? myLocation;
  AppManagerState({
    this.myLocation,
    this.isDarkMode = false,
    this.isLogOutSuccess = false,
    this.authResponseModel,
  });

  AppManagerState copyWith({
    bool? isDarkMode,
    bool? isLogOutSuccess,
    AuthResponseModel? authResponseModel,
    String? myLocation,
  }) {
    return AppManagerState(
      myLocation: myLocation ?? this.myLocation,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isLogOutSuccess: isLogOutSuccess ?? this.isLogOutSuccess,
      authResponseModel: authResponseModel ?? this.authResponseModel,
    );
  }
}
