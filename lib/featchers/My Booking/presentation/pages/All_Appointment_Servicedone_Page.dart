// ignore_for_file: file_names

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/Track_on_Map_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Order_Info_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Progress_Tracker_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/widget/Service_Card_Widget.dart';
import 'package:flutter/material.dart';

class AllAppointmentServicedonePage extends StatelessWidget {
  const AllAppointmentServicedonePage({super.key});

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
              child: StepProgressWidget(currentStep: 3),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.only(bottom: 150),
                    itemBuilder: (context, index) {
                      return ServiceCardWidget(
                        model: DummyData.serviceCardListDUMMY[index],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: DummyData.serviceCardListDUMMY.length,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButtonWhiteWidget(
                            width: 343,
                            buttonColor: ColorsFaces.colorSecondary,
                            hight: 56,
                            label: "Track on map",
                            borderColor: ColorsFaces.colorSecondary,
                            fontsStyle: FontsStyle.white16w700
                                .copyWith(color: ColorsFaces.colorThird),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrackOnMapPage()));
                            },
                          ),
                          SizedBox(height: 10),
                          TextButtonWhiteWidget(
                            width: 343,
                            hight: 56,
                            label: "Skip",
                            fontsStyle: FontsStyle.white16w700
                                .copyWith(color: Color(0xff26263C)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeContentPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
