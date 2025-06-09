// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/add_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:app2/core/colors/colors_faces.dart';

class ServiceCardWithAddButtonWidget extends StatelessWidget {
  const ServiceCardWithAddButtonWidget({
    super.key,
    required this.model,
    required this.isFreelance,
  });

  final ServiceInfoModelDUMMY model;
  final bool isFreelance;

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
            ServiceInfoRowWidget(isDarkPrice: isFreelance, serviceInfo: model),
            AddProductWidget(
              isFreelance: false,
              model: model,
            ),
          ],
        ),
      ),
    );
  }
}
