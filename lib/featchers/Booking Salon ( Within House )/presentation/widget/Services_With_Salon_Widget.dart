// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/services_quantity_selector_widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/provider_selector_widget.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class ServicesWithSalonWidget extends StatelessWidget {
  const ServicesWithSalonWidget({
    super.key,
    required this.service,
    required this.addedServices,
    required this.index,
  });

  final AddServiceModel service;
  final List<AddServiceModel> addedServices;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        DisplayServicesAndPriceNameWidget(name: "Services name", price: 26),
        ProviderSelectorWidget(
          providers: DummyData.providerListDUMMY,
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
