// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Email_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Name_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_passowrd_widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Sign_Up_Header_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/label_Widget.dart';

class SignUpFormWidget extends StatelessWidget {
  TextEditingController fullNameController;
  TextEditingController emailController;
  PhoneController phoneNumberController;
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;
  SignUpFormWidget({
    super.key,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignUpHeaderWidget(),
        labelWidget("Full Name"),
        InputNameWidget(
            icon: Icons.person_outline_rounded,
            controller: fullNameController,
            hintText: "John Doe"),
        labelWidget("Email"),
        InputEmailWidget(
            icon: Icons.mail_outline,
            controller: emailController,
            hintText: "Example@email.com"),
        labelWidget("Phone Number"),
        InputPhoneNumberWidget(
          controller: phoneNumberController,
        ),
        labelWidget("Password"),
        InputPassowrdWidget(
          controller: passwordController,
          hintText: '*****************',
        ),
        labelWidget("Confirm Password"),
        InputPassowrdWidget(
          controller: confirmPasswordController,
          hintText: '*****************',
        ),
      ],
    );
  }
}
