// ignore_for_file: file_names, deprecated_member_use
import 'dart:developer';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Fixed_Appointment_Card_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_House_Service_Card_With_Add_Button_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class WHouseDisplayOtherServicesPage extends StatelessWidget {
  const WHouseDisplayOtherServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: ColorsFaces.colorThird,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FixedAppointmentCardWidget(),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select more Services",
                        style: FontsStyle.whit16w400.copyWith(
                          color: const Color(0xff979797),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.only(bottom: 60),
                          itemBuilder: (context, index) {
                            return WHouseServiceCardWithAddButtonWidget(
                              model: DummyData.servicesListDUMMY[index],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemCount: DummyData.servicesListDUMMY.length,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButtonWhiteWidget(
                          width: 183,
                          hight: 55,
                          label: "Continue Shopping",
                          borderColor: const Color(0xffE3E3E3),
                          fontsStyle: FontsStyle.white13w400
                              .copyWith(color: const Color(0xff57597E)),
                          buttonColor: ColorsFaces.colorThird,
                          onPressed: () async {
                            log("Continue Shopping");
                          },
                        ),
                        TextButtonWhiteWidget(
                          width: 183,
                          hight: 55,
                          label: "Confirm Booking And Pay",
                          borderColor: const Color(0xffE3E3E3),
                          fontsStyle: FontsStyle.white13w400
                              .copyWith(color: ColorsFaces.colorThird),
                          buttonColor: const Color(0xff3E0C0C),
                          onPressed: () {
                            log("Confirm Booking And Pay");
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => WHouseBookingConfirmationPage(),
                            //   ),
                            // );
                          },
                        ),
                      ],
                    ),
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
