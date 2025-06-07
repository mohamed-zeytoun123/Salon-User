// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Order_Details_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  final double height;
  final int orderId;
  final BookingDate date;
  final double price;
  final String providerImageUrl;
  final String providerName;
  final String providerSpecialty;
  final List<Widget> additionalWidgets;
  final bool isGuest;

  const OrderItemWidget({
    this.isGuest = true,
    super.key,
    required this.height,
    required this.orderId,
    required this.date,
    required this.price,
    required this.providerImageUrl,
    required this.providerName,
    required this.providerSpecialty,
    this.additionalWidgets = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF7F7F7),
      elevation: 4,
      margin: EdgeInsets.only(left: 2, bottom: 5, right: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: height,
        width: 384,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: SizedBox(
                height: double.infinity,
                width: 16,
                child: BackgroundColorPages(),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderDetails(
                      orderId: orderId,
                      date: date,
                      price: price,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProviderDetailsWidget(
                          imageUrl: providerImageUrl,
                          name: providerName,
                          specialty: providerSpecialty,
                        ),
                        if (!isGuest)
                          TextButtonWhiteWidget(
                            width: 108,
                            hight: 39,
                            buttonColor:
                                const Color.fromARGB(111, 255, 255, 255),
                            onPressed: () {
                              log("onPressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProviderProfilePage()));
                            },
                            borderColor: Color(0xffE3E3E3),
                            label: "View Profile",
                            fontsStyle: FontsStyle.white13w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                      ],
                    ),
                    ...additionalWidgets,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
