// ignore_for_file: deprecated_member_use, file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Provider_Show_Image_Name_Dis_Widget.dart';
import 'package:app2/featchers/Cart/data/model/Card_Item_Wallet_Model.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Order_Details_With_Icon_Widget.dart';
import 'package:app2/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:flutter/material.dart';

class CardItemWalletWidget extends StatelessWidget {
  const CardItemWalletWidget({
    super.key,
    required this.model,
  });
  final CardItemWalletModelDUMMY model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383,
      height: 129,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffF6F6F6),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            SizedBox(
              width: 16,
              height: 129,
              child: ColoredBox(color: Color(0xff43152A)),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  spacing: 10,
                  children: [
                    OrderDetailsWithIconWidget(
                      isUp: model.isUp,
                      orderId: 321,
                      date: BookingDate(day: 12, month: 6, year: 2024),
                      price: 1200,
                    ),
                    if (model.isShowProfile)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProviderShowImageNameDisWidget(
                            image: 'https://picsum.photos/124/86?random=165',
                            name: "Provider Name",
                            discription: "Skin Care Specialist",
                          ),
                          TextButtonWhiteWidget(
                              width: 108,
                              hight: 39,
                              label: "View Profile",
                              onPressed: () {
                                log("View Profile");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProviderProfilePage()));
                              },
                              borderColor: Color(0xffE3E3E3),
                              fontsStyle: FontsStyle.white13w400.copyWith(
                                color: Color(0XFF000000),
                              )),
                        ],
                      )
                    else
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 5,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(149, 158, 158, 158),
                            radius: 20,
                            child: Center(
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: Image.asset(
                                  IconsUrl.giftfriend,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Friend - gift",
                            style: FontsStyle.whit12w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
