// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:app2/featchers/auth/data/models/auth_response_model.dart';

class AppManagerState {
  bool isDarkMode = false;
  final bool isLogOutSuccess;
  final AuthResponseModel? authResponseModel;
  AppManagerState({
    this.isDarkMode = false,
    this.isLogOutSuccess = false,
    this.authResponseModel,
  });

  AppManagerState copyWith({
    bool? isDarkMode,
    bool? isLogOutSuccess,
    AuthResponseModel? authResponseModel,
  }) {
    return AppManagerState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isLogOutSuccess: isLogOutSuccess ?? false,
      authResponseModel: authResponseModel ?? this.authResponseModel,
    );
  }
}
