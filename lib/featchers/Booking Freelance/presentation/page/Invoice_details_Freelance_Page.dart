// ignore_for_file: file_names, deprecated_member_use
import 'dart:developer';

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Card_Details_Provider_Service_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Expandable_Service_Price_Tile.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Input_Promo_Code_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Location_Change_Tile_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Loyalty_Points_Redeem_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Static_Price_Delivery_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Location_Map_Preview_Widget.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsFreelancePage extends StatelessWidget {
  const InvoiceDetailsFreelancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Invoice details"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            spacing: 10,
            children: [
              LocationChangeTileWidget(),
              LocationMapPreviewWidget(
                width: 377,
                hight: 113,
              ),
              CardDetailsProviderServiceWidget(),
              InputPromoCodeWidget(),
              LoyaltyPointsRedeemWidget(),
              ExpandableServicePriceTile(
                items: DummyData.invoiceListDUMMY,
              ),
              StaticPriceDeliveryWidget(),
              Row(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        "Total",
                        style: FontsStyle.white14w400
                            .copyWith(color: const Color(0xff515151)),
                      ),
                      Text(
                        "188 \$",
                        style: FontsStyle.whit24w700
                            .copyWith(color: const Color(0xff383838)),
                      )
                    ],
                  ),
                  Expanded(
                    child: TextButtonWhiteWidget(
                      width: 280,
                      hight: 56,
                      label: "Continue to Payment",
                      borderColor: const Color(0xffE3E3E3),
                      fontsStyle: FontsStyle.white16w700
                          .copyWith(color: ColorsFaces.colorThird),
                      buttonColor: const Color(0xff3E0C0C),
                      onPressed: () {
                        log("Continue to Payment");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
