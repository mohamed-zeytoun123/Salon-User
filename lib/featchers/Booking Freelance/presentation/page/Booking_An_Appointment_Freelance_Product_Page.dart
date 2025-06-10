// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';

import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Booking_Confirmation_Freelance_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Freelance_Provider_Info_Tile_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Service_Info_With_Price_And_Quantity_Widget.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Freelance_Time_Date_Notes_Section_Widget.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:flutter/material.dart';

class BookingAnAppointmentFreelanceProductPage extends StatefulWidget {
  BookingAnAppointmentFreelanceProductPage(
      {super.key, required this.addedServices});

  List<AddServiceModel> addedServices;

  @override
  State<BookingAnAppointmentFreelanceProductPage> createState() =>
      _BookingAnAppointmentFreelanceProductPageState();
}

class _BookingAnAppointmentFreelanceProductPageState
    extends State<BookingAnAppointmentFreelanceProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: ColorsFaces.colorThird,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonWhiteWidget(
                  width: 160,
                  hight: 55,
                  label: "Continue Shopping",
                  borderColor: Color(0xffE3E3E3),
                  fontsStyle:
                      FontsStyle.white13w400.copyWith(color: Color(0xff57597E)),
                  buttonColor: ColorsFaces.colorThird,
                  onPressed: () async {
                    log("Continue Shopping");

                    Navigator.pop(context, widget.addedServices);

                    setState(() {});
                  }),
              TextButtonWhiteWidget(
                width: 160,
                hight: 55,
                label: "Confirm Booking And Pay",
                borderColor: Color(0xffE3E3E3),
                fontsStyle: FontsStyle.whit12w400
                    .copyWith(color: ColorsFaces.colorThird),
                buttonColor: Color(0xff3E0C0C),
                onPressed: () {
                  double finalCost = 0;
                  for (var service in widget.addedServices) {
                    finalCost += service.price * service.number;
                  }

                  log("Confirm Booking And Pay");
                  log("لك شووووووف : $finalCost");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingConfirmationFreelancePage(
                        price: finalCost,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FreelanceProviderInfoTileWidget(),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ServiceInfoWithPriceAndQuantityWidget(
                    service: widget.addedServices[index],
                    addedServices: widget.addedServices,
                    index: index,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 5),
                itemCount: widget.addedServices.length,
              ),
              FreelanceTimeDateNotesSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
