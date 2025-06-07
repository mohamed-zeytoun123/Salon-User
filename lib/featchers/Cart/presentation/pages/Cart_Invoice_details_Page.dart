// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Expandable_Service_Price_Tile.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Input_Promo_Code_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Location_Change_Tile_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Static_Price_Delivery_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Dialog_Want_To_Pay_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class CartInvoiceDetailsPage extends StatelessWidget {
  const CartInvoiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Invoice details"),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButtonWhiteWidget(
              width: 250,
              hight: 56,
              label: "Continue to Payment",
              borderColor: const Color(0xffE3E3E3),
              fontsStyle: FontsStyle.white16w700.copyWith(
                color: ColorsFaces.colorThird,
              ),
              buttonColor: ColorsFaces.colorSecondary,
              onPressed: () {
                log("Continue to Payment");
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: DialogWantToPayWidget(),
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total",
                  style: FontsStyle.white14w400.copyWith(
                    color: const Color(0xff515151),
                  ),
                ),
                Text(
                  "188 \$",
                  style: FontsStyle.whit24w700.copyWith(
                    color: const Color(0xff383838),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          spacing: 10,
          children: [
            LocationChangeTileWidget(),
            InputPromoCodeWidget(),
            ExpandableServicePriceTile(items: DummyData.invoiceListDUMMY),
            StaticPriceDeliveryWidget(),
          ],
        ),
      ),
    );
  }
}
