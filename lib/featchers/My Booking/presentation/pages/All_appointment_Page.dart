// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Appointment_Card_Widget.dart';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
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
      ),
    );
  }
}
