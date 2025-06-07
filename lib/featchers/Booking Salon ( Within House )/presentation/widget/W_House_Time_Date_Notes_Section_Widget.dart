// ignore_for_file: must_be_immutable, file_names, library_private_types_in_public_api
import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Dotted_TextField_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Toggle_Option_Selector_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Booking_Confirmation_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_Salon_Booking_Confirmation_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Provider_Selector_Widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WHouseTimeDateNotesSectionWidget extends StatelessWidget {
  WHouseTimeDateNotesSectionWidget({super.key, required this.option1});
  final Option option1;
  TextEditingController textNotificationcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('dd-MM-yyyy', context.locale.toString())
        .format(DateTime.now());
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time & Date",
          style:
              FontsStyle.c24w400Meditative.copyWith(color: Color(0xff383838)),
        ),
        Text(
          "Choose the  date",
          style: FontsStyle.whit16w700.copyWith(color: Color(0xff303148)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffD9D9D9)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                today,
                style: FontsStyle.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              Icon(
                Icons.date_range_outlined,
                size: 30,
                color: Color(0xff000000),
              ),
            ],
          ),
        ),
        Text(
          "Choose the Time",
          style: FontsStyle.whit16w700.copyWith(color: Color(0xff000000)),
        ),
        ToggleOptionSelectorWidget(
          options: DummyData.optionsDUMMY,
          isSelectable: false,
        ),
        //!_________________________________________
        Text(
          "Choose Technique",
          style:
              FontsStyle.c24w400Meditative.copyWith(color: Color(0xff383838)),
        ),
        ProviderSelectorWidget(
          providers: DummyData.providerListDUMMY,
          isEnabled: false,
        ),

        //!_________________________________________
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
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonWhiteWidget(
                  width: 183,
                  hight: 55,
                  label: "Continue Shopping",
                  borderColor: Color(0xffE3E3E3),
                  fontsStyle:
                      FontsStyle.white13w400.copyWith(color: Color(0xff57597E)),
                  buttonColor: ColorsFaces.colorThird,
                  onPressed: () async {
                    log("Continue Shopping");
                  }),
              TextButtonWhiteWidget(
                width: 183,
                hight: 55,
                label: "Confirm Booking And Pay",
                borderColor: Color(0xffE3E3E3),
                fontsStyle: FontsStyle.white13w400
                    .copyWith(color: ColorsFaces.colorThird),
                buttonColor: Color(0xff3E0C0C),
                onPressed: () {
                  log("Confirm Booking And Pay");

                  if (option1 == Option.home) {
                    log(option1.name);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WHouseBookingConfirmationPage(),
                      ),
                    );
                  }
                  if (option1 == Option.salon) {
                    log(option1.name);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WSalonBookingConfirmationPage(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
