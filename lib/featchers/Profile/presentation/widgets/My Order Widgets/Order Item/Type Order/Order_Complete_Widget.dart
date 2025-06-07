// ignore_for_file: file_names
import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:app2/featchers/Profile/data/model/Order_Complete_Model.dart';
import 'package:app2/featchers/Profile/presentation/pages/Rating_Order_Page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Form_Order_Widget.dart';
import 'package:flutter/material.dart';

class OrderCompleteWidget extends StatelessWidget {
  final OrderCompleteModelDUMMY model;
  const OrderCompleteWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FormOrderWidget(
      height: 200,
      orderId: model.orderId,
      date: BookingDate(
          day: model.date.day, month: model.date.month, year: model.date.year),
      price: model.price,
      providerImageUrl: model.providerImageUrl,
      providerName: model.providerName,
      providerSpecialty: model.providerSpecialty,
      additionalWidgets: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            spacing: 20,
            children: [
              if (!model.isGuest)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Text(
                      "Rating",
                      style: FontsStyle.whit12w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    RatingStarsWidget(
                      rating: 2,
                      sizeStar: 20,
                      titleStyle: FontsStyle.whit12w400FamiljenGrotesk
                          .copyWith(fontSize: 18),
                    ),
                  ],
                )
              else
                Row(
                  spacing: 20,
                  children: [
                    Text(
                      "Rating",
                      style: FontsStyle.whit12w700.copyWith(
                        color: Color(0xffFFAC50),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffFFAC50),
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2.5,
                      ),
                    ),
                    Text("Click To rate",
                        style: FontsStyle.white10w400
                            .copyWith(color: Color.fromARGB(255, 44, 36, 36)))
                  ],
                ),
              TextButtonWhiteWidget(
                  width: double.infinity,
                  hight: 32,
                  onPressed: () {
                    log("Rating fs");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingOrderPage()));
                  },
                  borderColor: Color(0xffE3E3E3),
                  label: "Rating",
                  fontsStyle:
                      FontsStyle.white14w400.copyWith(color: Color(0xff666666)))
            ],
          ),
        )
      ],
    );
  }
}
