// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/featchers/Cart/presentation/pages/Loyalty_Points_Page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:app2/featchers/Payment/presentation/pages/Payment_Method_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Edit_Profile_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Favorite_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/Select_Location_Page.dart';
import 'package:flutter/material.dart';

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';

class ItemAccountWidget extends StatelessWidget {
  const ItemAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Account",
                style: FontsStyle.white24w400Meditative.copyWith(
                  color: Color(0xff43152A),
                )),
            CustomBorderButtonWidget(
                text: "Edit Profile",
                onTap: () {
                  log("Edit Profile");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()));
                }),
            CustomBorderButtonWidget(
                text: "Billing & Payments",
                onTap: () {
                  log("Billing & Payments");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentMethodPage()));
                }),
            CustomBorderButtonWidget(
                text: "My Orders",
                onTap: () {
                  log("My Orders");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyOrderPage()));
                }),
            CustomBorderButtonWidget(
                text: "Loyalty Points",
                onTap: () {
                  log("Loyalty Points");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoyaltyPointsPage()));
                }),
            CustomBorderButtonWidget(
                text: "Saved",
                onTap: () {
                  log("Saved");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FavoritePage()));
                }),
            CustomBorderButtonWidget(
                text: "Wallet",
                onTap: () {
                  log("Wallet");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WalletPage()));
                }),
            CustomBorderButtonWidget(
                text: "My Location",
                onTap: () {
                  log("My Location");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectLocation(
                                onPressed: () {},
                              )));
                }),
          ],
        ),
      ),
    );
  }
}
