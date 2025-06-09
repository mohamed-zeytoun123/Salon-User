// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app2/core/Error/failure.dart';
import 'package:app2/featchers/auth/data/models/auth_response_model.dart';

class AuthState {
  final Failure? failure;
  final AuthResponseModel? authResponseModel;
  //!__________Login__________________________________
  final bool isLoadingLogin;
  final bool isSuccessLogin;
  //!__________Sign Up__________________________________
  final bool isLoadingSignUp;
  final bool isSuccessSignUp;
  //!___________________________________________________
  AuthState({
    this.failure,
    this.isLoadingLogin = false,
    this.isSuccessLogin = false,
    this.isLoadingSignUp = false,
    this.isSuccessSignUp = false,
    this.authResponseModel,
  });

  AuthState copyWith({
    Failure? failure,
    AuthResponseModel? authResponseModel,
    bool? isLoadingLogin,
    bool? isSuccessLogin,
    bool? isLoadingSignUp,
    bool? isSuccessSignUp,
  }) {
    return AuthState(
      failure: failure ?? this.failure,
      authResponseModel: authResponseModel ?? this.authResponseModel,
      isLoadingLogin: isLoadingLogin ?? false,
      isSuccessLogin: isSuccessLogin ?? false,
      isLoadingSignUp: isLoadingSignUp ?? false,
      isSuccessSignUp: isSuccessSignUp ?? false,
    );
  }
}
