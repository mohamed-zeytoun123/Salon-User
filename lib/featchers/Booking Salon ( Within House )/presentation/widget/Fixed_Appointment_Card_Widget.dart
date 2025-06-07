// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/Widgets/Status_Badge_Widget.dart';
import 'package:app2/core/Widgets/Appointment Card Widget/BodyAppointmentCardWidget/Booking_Date_Time_Widget.dart';
import 'package:app2/core/model/Body Appointment Card Model/Booking_Date_Time_model.dart';
import 'package:app2/core/model/Body Appointment Card Model/enum_Time_Period_model.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/featchers/Booking Freelance/presentation/widget/Provider_Show_Image_Name_Dis_Widget.dart';

class FixedAppointmentCardWidget extends StatelessWidget {
  const FixedAppointmentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 154,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(0, 10),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        spacing: 15,
        children: [
          //!          ProviderInfoModel

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 67,
                      height: 46.5,
                      child: Image.network(
                        "https://picsum.photos/124/86?random=172",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Salon name",
                    overflow: TextOverflow.ellipsis,
                    style: FontsStyle.black16w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                ],
              ),
              StatusBadgeWidget(
                text: "In Home",
                textcolor: Color(0xff3E0C0C),
              ),
            ],
          ),
          BookingDateTimeWidget(
            bookingDateTime: BookingDateTime(
              date: BookingDate(day: 30, month: 7, year: 2024),
              hour: 8,
              minute: 30,
              period: TimePeriod.AM,
            ),
          ),
          ProviderShowImageNameDisWidget(
            image: 'https://picsum.photos/124/86?random=165',
            name: "Provider Name",
            discription: "Skin Care Specialist",
          ),
        ],
      ),
    );
  }
}
