// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class JoinAsPartnerWidget extends StatelessWidget {
  const JoinAsPartnerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 13,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 20),
          child: Text("Logo", style: FontsStyle.white45w700),
        ),
        Text("Have A Business Account?",
            style: FontsStyle.black32w400Meditative
                .copyWith(color: ColorsFaces.colorThird)),
        Container(
          height: 46,
          width: 289,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Join as a partner",
              style: FontsStyle.black16w700,
            ),
          ),
        ),
      ],
    );
  }
}
