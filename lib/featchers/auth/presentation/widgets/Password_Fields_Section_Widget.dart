// ignore_for_file: file_names, must_be_immutable

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class PasswordFieldsSection extends StatelessWidget {
  PasswordFieldsSection({
    super.key,
  });
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "New Password",
          style: FontsStyle.white14w700.copyWith(color: Color(0xff000000)),
        ),
        InputPassowrdWidget(
          controller: passwordController,
          hintText: '*****************',
        ),
        Text(
          "Confirm New Password",
          style: FontsStyle.white14w700.copyWith(color: Color(0xff000000)),
        ),
        InputPassowrdWidget(
          controller: confirmpasswordController,
          hintText: '*****************',
        ),
      ],
    );
  }
}
