// ignore_for_file: file_names
import 'dart:developer';

import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/core/style/App_Snack_Bar.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_state.dart';
import 'package:app2/featchers/auth/presentation/widgets/Confirm_Button_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Forgot_Password_Button.dart';
import 'package:app2/featchers/auth/presentation/widgets/Guest_Join_Link_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Login_Form_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Sign_Up_Prompt_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

class LoginBottomSheetWidget extends StatelessWidget {
  LoginBottomSheetWidget({super.key});
  final PhoneController phoneController = PhoneController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.failure != null) {
          AppSnackBar.show(
              context: context,
              message: state.failure!.message,
              icon: state.failure!.statusCode == 404
                  ? Icons.error
                  : Icons.error_outline);
        } else if (state.isSuccessLogin) {
          AppSnackBar.show(
            context: context,
            message: "Success, Welcome !",
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 3),
            icon: Icons.sentiment_satisfied_alt,
          );

          if (state.authResponseModel != null) {
            final token = state.authResponseModel!.token;
            log("✅ AuthResponseModel موجود");
            log("🔐 Token: $token");

            BlocProvider.of<AppManagerCubit>(context)
                .saveUserDataInAppState(state.authResponseModel!);
          }

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: BlocProvider.of<AuthCubit>(context),
                child: HomeContentPage(),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Expanded(
          child: BottomSheetWidget(
            height: 520,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                child: Column(
                  spacing: 10,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        "Welcome, use your phone to sign on",
                        style: FontsStyle.whid18w400
                            .copyWith(color: Color(0xff000000)),
                      ),
                    ),
                    LoginFormWidget(
                      formKey: _formKey,
                      phoneController: phoneController,
                      passwordController: passwordController,
                    ),
                    ForgotPasswordButtonWidget(),
                    if (state.isLoadingLogin)
                      const CircularProgressIndicator()
                    else
                      ConfirmButtonWidget(
                        formKey: _formKey,
                        phoneController: phoneController,
                        passwordController: passwordController,
                      ),
                    SignUpPromptWidget(),
                    GuestJoinLinkWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
