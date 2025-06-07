// ignore_for_file: file_names

import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_House_Add_Product_Widget.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Service_Info_model.dart';
import 'package:app2/core/Widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';

class WHouseServiceCardWithAddButtonWidget extends StatelessWidget {
  const WHouseServiceCardWithAddButtonWidget({
    super.key,
    required this.model,
  });

  final ServiceInfoModelDUMMY model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: 373,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE3E3E3)),
        color: ColorsFaces.colorThird,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          spacing: 10,
          children: [
            ServiceInfoRowWidget(isDarkPrice: true, serviceInfo: model),
            WHouseAddProductWidget(
              model: model,
            ),
          ],
        ),
      ),
    );
  }
}
