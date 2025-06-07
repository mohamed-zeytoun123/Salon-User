// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Display_Services_And_Price_Name_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Services_Quantity_Selector_Widget.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:flutter/material.dart';

class ServiceInfoWithPriceAndQuantityWidget extends StatelessWidget {
  const ServiceInfoWithPriceAndQuantityWidget(
      {super.key,
      required this.service,
      required this.addedServices,
      required this.index});

  final AddServiceModel service;
  final List<AddServiceModel> addedServices;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DisplayServicesAndPriceNameWidget(
          name: service.title,
          price: service.price,
        ),
        Text(
          "people benefiting from the service",
          style: FontsStyle.whit16w400.copyWith(color: Color(0xff979797)),
        ),
        ServicesQuantitySelectorWidget(
          index: index,
          addedServices: addedServices,
          price: service.price,
          onCostChanged: (cost) {
            log("$cost");
          },
        ),
      ],
    );
  }
}
