// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:app2/featchers/Profile/data/model/order_pending_model_dummy.dart';
import 'package:app2/featchers/Profile/presentation/pages/Cancel_Order_Page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Form_Order_Widget.dart';
import 'package:flutter/material.dart';

class OrderPendingWidget extends StatelessWidget {
  final OrderPendingModelDUMMY model;
  const OrderPendingWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FormOrderWidget(
      orderId: model.orderId,
      isGuest: model.isGuest,
      date: BookingDate(
          day: model.date.day, month: model.date.month, year: model.date.year),
      price: model.price,
      providerImageUrl: model.providerImageUrl,
      providerName: model.providerName,
      providerSpecialty: model.providerSpecialty,
      additionalWidgets: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonWhiteWidget(
                width: 130,
                hight: 32,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CancelOrderPage()));
                },
                label: "Cancel",
                fontsStyle: FontsStyle.white14w400
                    .copyWith(color: ColorsFaces.colorSecondary),
                borderColor: ColorsFaces.colorSecondary,
              ),
              TextButtonWhiteWidget(
                width: 130,
                hight: 32,
                onPressed: () {
                  log("View Order");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AllAppointmentProcessingPage()));
                },
                label: "View Order",
                buttonColor: const Color.fromARGB(111, 255, 255, 255),
                fontsStyle:
                    FontsStyle.white14w400.copyWith(color: Color(0xff666666)),
                borderColor: Color(0xffE3E3E3),
              )
            ],
          ),
        )
      ],
    );
  }
}
