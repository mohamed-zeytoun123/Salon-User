// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Card_Method_Payment_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Card_Method_Payment_Of_Wallet_Widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBarWidget(title: "Payment", color: ColorsFaces.colorThird),
      backgroundColor: ColorsFaces.colorThird,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TextButtonWhiteWidget(
              width: 174.5,
              hight: 56,
              onPressed: () {
                log("chose");
              },
              borderColor: Color(0xffE3E3E3),
              label: "Chose",
              fontsStyle:
                  FontsStyle.whit16w700.copyWith(color: Color(0xff43152A)),
            ),
            TextButtonWhiteWidget(
              width: 174.5,
              hight: 56,
              onPressed: () {
                log("Add Another Method");
              },
              borderColor: Color(0xffE3E3E3),
              label: "Add Another Method",
              buttonColor: ColorsFaces.colorThird,
              fontsStyle:
                  FontsStyle.white14w700.copyWith(color: Color(0xff1A1A1A)),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          spacing: 5,
          children: [
            CardMethodPaymentWidget(
                image: IconsUrl.visa,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("Expires");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.icon3,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon3");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.icon2,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon2");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.tabby,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("tabby");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.tamara,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("tamara");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.icon1,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon1");
                }),
            CardMethodPaymentWidget(
                image: IconsUrl.play,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("play");
                }),
            CardMethodPaymentOfWalletWidget(),
          ],
        ),
      ),
    );
  }
}
