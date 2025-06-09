// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:app2/core/Widgets/status_badge_widget.dart';
import 'package:app2/featchers/My%20Booking/data/model/service_card_model_dummy.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  final ServiceCardModelDUMMY model;

  const ServiceCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 129,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E3E3)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ServiceInfoRowWidget(serviceInfo: model.serviceInfo),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProviderDetailsWidget(
                imageUrl: model.providerImageUrl,
                name: model.providerName,
                specialty: model.providerSpecialty,
              ),
              StatusBadgeWidget(
                text: model.statusText,
                width: 110,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
