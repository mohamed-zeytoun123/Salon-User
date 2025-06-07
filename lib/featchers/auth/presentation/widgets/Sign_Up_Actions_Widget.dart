// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/style/App_Snack_Bar.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/featchers/auth/presentation/pages/OTP_new_number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/failed_success_page.dart';

class SignUpActionsWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  TextEditingController fullNameController;
  TextEditingController emailController;
  PhoneController phoneNumberController;
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;
  SignUpActionsWidget({
    super.key,
    required this.formKey,
    required this.fullNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButtonColorMainWidget(
          width: 301,
          hight: 50,
          label: "Create New Account",
          onPressed: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<AuthCubit>(context).signUp(
                  fullNameController.text,
                  phoneNumberController.value.international,
                  emailController.text,
                  passwordController.text,
                  confirmPasswordController.text);

              // log("Account Created Successfully!");

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => OtpNewNumberPage()));
            }
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? "),
            InkWell(
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Color(0xffA64D79),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffA64D79),
                  decorationThickness: 1,
                ),
              ),
              onTap: () {
                log("sign in");
              },
            )
          ],
        ),
      ],
    );
  }
}
