// ignore_for_file: file_names, must_be_immutable
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Booking_Time_And_Date_Selector_Section_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/booking_provider_card_Widget.dart';
import 'package:flutter/material.dart';

class BookingConfirmationFreelancePage extends StatelessWidget {
  const BookingConfirmationFreelancePage({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      body: SingleChildScrollView(
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookingProviderCardWidget(),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Time & Date",
                    style: FontsStyle.c24w400Meditative
                        .copyWith(color: Color(0xff383838)),
                  ),
                  Text(
                    "Choose the  date",
                    style: FontsStyle.whit16w700
                        .copyWith(color: Color(0xff303148)),
                  ),
                  BookingTimeAndDateSelectorSectionWidget(
                    price: price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
