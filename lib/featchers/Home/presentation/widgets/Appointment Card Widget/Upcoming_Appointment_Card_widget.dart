// ignore_for_file: file_names
import 'dart:developer';

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Appointment_Card_Widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentCardWidget extends StatelessWidget {
  const UpcomingAppointmentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderWidget(
          title: "Upcoming appointment",
          titleStyle: FontsStyle.white24w400Meditative
              .copyWith(color: Color(0xff43152A)),
          onTap: () {
            log("Upcoming appointment");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllAppointmentPage()));
          },
        ),
        SizedBox(
          width: double.infinity,
          height: 197,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AllAppointmentProcessingPage()));
                  },
                  child: AppointmentCardWidget(
                      bodyAppointmentCardModel: DummyData.appointmentsDUMMY[index]),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
              itemCount: DummyData.appointmentsDUMMY.length),
        ),
      ],
    );
  }
}
