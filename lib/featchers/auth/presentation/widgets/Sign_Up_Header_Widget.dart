// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Create new account.",
            style: FontsStyle.black32w400Meditative,
          ),
          Text(
            "Enter the following info to create new account.",
            style: FontsStyle.black18w400SF_Pro_Display_Heavy
                .copyWith(fontSize: 12, color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
