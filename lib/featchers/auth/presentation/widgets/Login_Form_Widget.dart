// ignore_for_file: file_names
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_passowrd_widget.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.phoneController,
    required this.passwordController,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  final PhoneController phoneController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20,
        children: [
          // InputNameWidget(controller: phoneController, hintText: "hintText"),
          InputPhoneNumberWidget(controller: phoneController),

          InputPassowrdWidget(
            controller: passwordController,
            hintText: "password",
          ),
        ],
      ),
    );
  }
}
