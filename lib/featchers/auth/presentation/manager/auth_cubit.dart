
import 'dart:developer';
import 'package:app2/featchers/auth/data/source/auth_remote_data_source.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  //! ________________login___________________________________________________________________
  login(String phone, String password) async {
    emit(state.copyWith(isLoadingLogin: true, failure: null));
    final result = await AuthRemoteDataSource.login(phone, password);

    result.fold((failure) {
      emit(state.copyWith(
        failure: failure,
        isLoadingLogin: false,
        isSuccessLogin: false,
      ));
    }, (authResponse) {
      log("✅ Full Auth Response:");
      log("  token: ${authResponse.token}");
      log("  userId: ${authResponse.user.id}");
      log("  name: ${authResponse.user.name}");
      log("  email: ${authResponse.user.email}");
      emit(state.copyWith(
          authResponseModel: authResponse,
          isSuccessLogin: true,
          isLoadingLogin: false));
    });
  }

  //! _______________Sign Up________________________________________________________________
  signUp(
    String name,
    String phone,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    emit(state.copyWith(isLoadingSignUp: true, failure: null));
    final result = await AuthRemoteDataSource.signUp(
        name, phone, email, password, passwordConfirmation);
    result.fold((failure) {
      log("❌ Failure during signup: ${failure.message}");
      emit(state.copyWith(
        failure: failure,
        isLoadingSignUp: false,
        isSuccessSignUp: false,
      ));
    }, (response) {
      emit(state.copyWith(
          authResponseModel: response,
          isSuccessSignUp: true,
          isLoadingSignUp: false));
    });
  }
  //! ______________________________________________________________________________________
  //! ______________________________________________________________________________________
  //! ______________________________________________________________________________________
  //! ______________________________________________________________________________________
}
