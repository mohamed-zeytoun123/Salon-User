// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Provider_Info_Row_Widget.dart';
import 'package:app2/core/Widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:app2/core/Widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Booking_Date_Time_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Location_Text_Widget.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Body_Appointment_Card_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/pages/Cancel_Order_Page.dart';
import 'package:flutter/material.dart';

class BodyAppointmentCardWidget extends StatelessWidget {
  final BodyAppointmentCardModelDUMMY appointmentCardModel;

  const BodyAppointmentCardWidget({
    super.key,
    required this.appointmentCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: Color(0xffF6F6F6),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
          child: Column(
            spacing: 6,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceInfoRowWidget(
                  serviceInfo: appointmentCardModel.serviceInfo),
              ProviderInfoRowWidget(
                  providerInfoModel: appointmentCardModel.providerInfoModel),
              LocationTextWidget(location: appointmentCardModel.location),
              BookingDateTimeWidget(
                  bookingDateTime: appointmentCardModel.bookingDateTime),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButtonWhiteWidget(
                      width: 64,
                      hight: 32,
                      label: "Cancel",
                      onPressed: () {
                        log("Cancel");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CancelOrderPage()));
                      },
                      borderColor: Color(0xffE3E3E3),
                      fontsStyle: FontsStyle.white14w400
                          .copyWith(fontSize: 11.3, color: Color(0xff666666))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
