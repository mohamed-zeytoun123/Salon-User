// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class FormHeaderOfWalletWidget extends StatelessWidget {
  const FormHeaderOfWalletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff3E0C0C),
              Color(0xff3E0C0C),
              Color.fromARGB(255, 107, 38, 38),
            ],
            stops: [-0.4, -0.5, .8],
          ),
        ),
        padding: EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.card_travel_rounded,
                  color: ColorsFaces.colorThird,
                  size: 30,
                ),
                Text(
                  "Wallet",
                  style: FontsStyle.whit24w400
                      .copyWith(color: ColorsFaces.colorThird),
                ),
              ],
            ),
            Column(
              spacing: 6,
              children: [
                Text(
                  "1000 \$",
                  style: FontsStyle.whit24w400
                      .copyWith(color: ColorsFaces.colorThird),
                ),
                TextButtonWhiteWidget(
                    borderColor: Color(0xffD9D9D9),
                    buttonColor: Color(0xffD9D9D9),
                    label: "Charge Wallet",
                    width: 131,
                    hight: 35,
                    onPressed: () {
                      log("Charge Wallet");
                    }),
              ],
            )
          ],
        ));
  }
}
