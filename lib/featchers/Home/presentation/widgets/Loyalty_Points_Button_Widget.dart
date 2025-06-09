// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:flutter/material.dart';

class LoyaltyPointsButtonWidget extends StatelessWidget {
  const LoyaltyPointsButtonWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 138,
      decoration: BoxDecoration(
        color: isFreelance
            ? Color.fromARGB(255, 82, 24, 47)
            : ColorsFaces.colorSecondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            log("loyalty points");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoyaltyPointsPage()));
          },
          borderRadius: BorderRadius.circular(15),
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(IconsUrl.iconp),
                fit: BoxFit.cover,
              ),
              Text(
                "loyalty points",
                style:
                    FontsStyle.white14w400.copyWith(color: Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
