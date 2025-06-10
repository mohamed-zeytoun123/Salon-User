// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:flutter/material.dart';

class LoyaltyPointsRedeemWidget extends StatelessWidget {
  const LoyaltyPointsRedeemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Redeem for loyalty points",
              style: FontsStyle.whit16w700.copyWith(color: Color(0xff898A8D)),
            ),
            Row(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "You have 10 points worth \$70",
                  style:
                      FontsStyle.white13w400.copyWith(color: Color(0xff898A8D)),
                ),
                Image(
                  image: AssetImage(IconsUrl.point),
                  fit: BoxFit.cover,
                  color: Color(0xff898A8D),
                ),
              ],
            )
          ],
        ),
        TextButtonWhiteWidget(
          width: 120,
          hight: 50,
          label: "Redeem points",
          borderColor: const Color(0xffE3E3E3),
          fontsStyle:
              FontsStyle.whit16w700.copyWith(color: ColorsFaces.colorThird),
          buttonColor: const Color(0xff3E0C0C),
          onPressed: () {
            log("Redeem points");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoyaltyPointsPage()));
          },
        ),
      ],
    );
  }
}
