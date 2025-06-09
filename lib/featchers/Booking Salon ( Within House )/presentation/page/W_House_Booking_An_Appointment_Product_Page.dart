// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';

import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Invoice_Details_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Fixed_Appointment_Card_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Services_With_Salon_Widget.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:flutter/material.dart';

class WHouseBookingAnAppointmentProductPage extends StatelessWidget {
  WHouseBookingAnAppointmentProductPage({
    super.key,
    required this.service,
    required this.addedServices,
    required this.index,
  });

  final AddServiceModel service;
  final List<AddServiceModel> addedServices;
  final int index;

  TextEditingController textNotificationcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: ColorsFaces.colorThird,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FixedAppointmentCardWidget(),
              ...List.generate(
                3,
                (i) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ServicesWithSalonWidget(
                    service: service,
                    addedServices: [
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                    ],
                    index: 0,
                  ),
                ),
              ),
              Text(
                "Add your Nots",
                style: FontsStyle.whit20w400.copyWith(color: Color(0xff383838)),
              ),
              InputDottedTextfieldWidget(
                hintText: "add your notifications",
                controller: textNotificationcontroller,
                height: 107,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                      width: 183,
                      hight: 55,
                      label: "Continue Shopping",
                      borderColor: Color(0xffE3E3E3),
                      fontsStyle: FontsStyle.white13w400.copyWith(
                        color: Color(0xff57597E),
                      ),
                      buttonColor: ColorsFaces.colorThird,
                      onPressed: () {
                        log("Continue Shopping");
                      },
                    ),
                    TextButtonWhiteWidget(
                      width: 183,
                      hight: 55,
                      label: "Confirm Booking And Pay",
                      borderColor: Color(0xffE3E3E3),
                      fontsStyle: FontsStyle.white13w400.copyWith(
                        color: ColorsFaces.colorThird,
                      ),
                      buttonColor: Color(0xff3E0C0C),
                      onPressed: () {
                        log("Confirm Booking And Pay");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WHouseInvoiceDetailsPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
