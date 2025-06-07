// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class OtpInstructionsWidget extends StatelessWidget {
  const OtpInstructionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "OTP Number",
          style: FontsStyle.w0x45w400Meditative,
        ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Enter the Code Sent to ",
                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy,
              ),
              TextSpan(
                text: "******94",
                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy.copyWith(
                  color: Color(0xffA64D79),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffA64D79),
                  decorationThickness: 1,
                ),
              ),
              TextSpan(
                text: " to Continue Log in Registration",
                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
