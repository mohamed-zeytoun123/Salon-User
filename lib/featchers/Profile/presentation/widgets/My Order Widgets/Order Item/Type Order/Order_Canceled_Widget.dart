// ignore_for_file: file_names
import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:app2/featchers/Profile/data/model/order_canceled_model_dummy.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Form_Order_Widget.dart';
import 'package:flutter/material.dart';

class OrderCanceledWidget extends StatelessWidget {
  final OrderCanceledModelDUMMY model;

  const OrderCanceledWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FormOrderWidget(
      height: 213,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reason for cancellation",
                      style: FontsStyle.whit12w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    Text(
                      maxLines: 1,
                      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipis vfdgddddddddd",
                      style: FontsStyle.white13w400.copyWith(
                        color: Color(0xff807C7E),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              else
                SizedBox(
                  height: 35,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButtonWhiteWidget(
                    width: 130,
                    hight: 32,
                    onPressed: () {
                      log("Delete");
                    },
                    label: "Delete",
                    fontsStyle: FontsStyle.white14w400
                        .copyWith(color: ColorsFaces.colorSecondary),
                    borderColor: ColorsFaces.colorSecondary,
                  ),
                  TextButtonWhiteWidget(
                    width: 130,
                    hight: 32,
                    onPressed: () {
                      log("View");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllAppointmentProcessingPage()));
                    },
                    label: "View",
                    buttonColor: const Color.fromARGB(111, 255, 255, 255),
                    fontsStyle: FontsStyle.white14w400
                        .copyWith(color: Color(0xff666666)),
                    borderColor: Color(0xffE3E3E3),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
