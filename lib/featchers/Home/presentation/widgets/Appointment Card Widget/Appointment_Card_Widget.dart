// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Body_Appointment_Card_Widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Body_Appointment_Card_Model.dart';
import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  final BodyAppointmentCardModelDUMMY bodyAppointmentCardModel;
  const AppointmentCardWidget({
    super.key,
    required this.bodyAppointmentCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(left: 2, bottom: 5, right: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 196,
        width: 383,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              child: SizedBox(
                height: double.infinity,
                width: 16,
                child: BackgroundColorPages(),
              ),
            ),
            BodyAppointmentCardWidget(
              appointmentCardModel: bodyAppointmentCardModel,
            )
          ],
        ),
      ),
    );
  }
}
