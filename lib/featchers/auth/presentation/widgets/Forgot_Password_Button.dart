// ignore_for_file: file_names
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/auth/presentation/pages/Phone_Number_Page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        child: Text(
          "Forget Password ?",
          style: FontsStyle.black18w400SF_Pro_Display_Heavy.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: Color(0xff909090),
              decorationThickness: 1.5,
              color: Color(0xff909090),
              fontSize: 16),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PhoneNumberPage()));
        },
      ),
    );
  }
}
