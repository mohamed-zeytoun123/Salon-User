// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_Provider_Info_Tile_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_House_Time_Date_Notes_Section_Widget.dart';
import 'package:flutter/material.dart';

class WHouseBookingAnAppointmentPage extends StatefulWidget {
  const WHouseBookingAnAppointmentPage({super.key});

  @override
  State<WHouseBookingAnAppointmentPage> createState() =>
      _WHouseBookingAnAppointmentPageState();
}

class _WHouseBookingAnAppointmentPageState
    extends State<WHouseBookingAnAppointmentPage> {
  Option option = Option.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: ColorsFaces.colorThird,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WProviderInfoTileWidget(),
              SelectableButtonWidget(
                isEnabled: true,
                onOptionSelected: (Option value) {
                  setState(() {
                    option = value;
                  });
                  log(value.name);
                },
              ),
              DisplayServicesAndPriceNameWidget(
                name: "Services Name",
                price: 26,
              ),
              WHouseTimeDateNotesSectionWidget(option1: option)
            ],
          ),
        ),
      ),
    );
  }
}
