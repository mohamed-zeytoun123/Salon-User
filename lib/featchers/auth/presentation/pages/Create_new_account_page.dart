// ignore_for_file: file_names, must_be_immutable

import 'dart:developer';

import 'package:app2/core/app/App_Manager_Cubit.dart';
import 'package:app2/core/style/App_Snack_Bar.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_state.dart';
import 'package:app2/featchers/auth/presentation/widgets/Sign_Up_Actions_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Sign_Up_Form_Widget.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

class CreateNewAccountPage extends StatelessWidget {
  CreateNewAccountPage({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PhoneController phoneNumberController = PhoneController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (BuildContext context, state) {
        if (state.failure != null) {
          AppSnackBar.show(
              context: context,
              message: state.failure!.message,
              icon: state.failure!.statusCode == 404
                  ? Icons.error
                  : Icons.error_outline);
          log(state.failure!.message);
        } else if (state.isSuccessSignUp) {
          AppSnackBar.show(
            context: context,
            message: "Account created successfully! Welcome aboard ",
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 3),
            icon: Icons.verified_user,
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
      builder: (BuildContext context, state) {
        return Scaffold(
          body: BackgroundColorPages(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 52, left: 18),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: BottomSheetWidget(
                    height: 827,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 5),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 25,
                            children: [
                              SignUpFormWidget(
                                fullNameController: fullNameController,
                                emailController: emailController,
                                phoneNumberController: phoneNumberController,
                                passwordController: passwordController,
                                confirmPasswordController:
                                    confirmPasswordController,
                              ),
                              if (state.isLoadingSignUp)
                                Center(child: const CircularProgressIndicator())
                              else
                                SignUpActionsWidget(
                                    formKey: _formKey,
                                    fullNameController: fullNameController,
                                    emailController: emailController,
                                    phoneNumberController:
                                        phoneNumberController,
                                    passwordController: passwordController,
                                    confirmPasswordController:
                                        confirmPasswordController),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
