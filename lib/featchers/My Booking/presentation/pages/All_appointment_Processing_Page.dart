// ignore_for_file: file_names
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_Appointment_Servicedone_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Order_Info_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Price_Details_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Progress_Tracker_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Service_Card_Widget.dart';
import 'package:flutter/material.dart';

class AllAppointmentProcessingPage extends StatelessWidget {
  const AllAppointmentProcessingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "All Upcoming appointment"),
      backgroundColor: ColorsFaces.colorThird,
      body: Column(
        spacing: 15,
        children: [
          OrderInfoWidget(orderId: 46501, date: "Nov 16, 2024"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: StepProgressWidget(currentStep: 2),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AllAppointmentServicedonePage()));
                      },
                      child: ServiceCardWidget(
                        model: DummyData.serviceCardListDUMMY[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: DummyData.serviceCardListDUMMY.length)),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: PriceDetailsWidget(
                priceItem: 36,
                priceFees: 3.9,
                priceTotal: 39.9,
              ))
        ],
      ),
    );
  }
}
