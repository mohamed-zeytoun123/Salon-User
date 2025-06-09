// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:flutter/material.dart';

class GuestJoinLinkWidget extends StatelessWidget {
  const GuestJoinLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        child: Text(
          "Join as a Guest",
          style: FontsStyle.black18w400SF_Pro_Display_Heavy.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: Color(0xff26263C),
              decorationThickness: 1.5,
              color: Color(0xff26263C),
              fontSize: 16),
        ),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => HomeContentPage()),
            (route) => false,
          );
          //  context.go(RoutesPath.homeContent);
          log("Join as a Guest");
        },
      ),
    );
  }
}
