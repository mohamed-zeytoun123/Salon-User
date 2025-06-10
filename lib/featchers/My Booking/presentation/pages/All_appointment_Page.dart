// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/appointment_card_widget.dart';
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:flutter/material.dart';

class AllAppointmentPage extends StatelessWidget {
  const AllAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
          title: "All Upcoming appointment", isShowBackArrow: false),
      backgroundColor: ColorsFaces.colorThird,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        itemCount: DummyData.appointmentsDUMMY.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllAppointmentProcessingPage()),
              );
            },
            child: AppointmentCardWidget(
                bodyAppointmentCardModel: DummyData.appointmentsDUMMY[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
      ),
    );
  }
}
