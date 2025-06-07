// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Booking_An_Appointment_Product_Page.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/model/Body Appointment Card Model/Service_Info_model.dart';

class WHouseAddProductWidget extends StatelessWidget {
  const WHouseAddProductWidget({super.key, required this.model});

  final ServiceInfoModelDUMMY model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          log("Add button pressed for: ${model.title}");
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WHouseBookingAnAppointmentProductPage(
                  service: AddServiceModel(title: "Haircut", price: 50.0),
                  index: 0,
                  addedServices: [
                    AddServiceModel(title: "Haircut", price: 50.0),
                    AddServiceModel(title: "Massage", price: 70.0),
                  ],
                ),
              ));
        },
        child: Ink(
          height: 32,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE3E3E3)),
            color: const Color(0xff3E0C0C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                size: 15,
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
