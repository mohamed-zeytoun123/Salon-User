// ignore_for_file: library_private_types_in_public_api, file_names

import 'dart:developer';
import 'package:app2/featchers/Payment/presentation/widgets/Bottom_Sheet_Add_Payment_Method_Widget.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Card_Method_Payment_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Card_Method_Payment_Of_Wallet_Widget.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int? selectedIndex;

  @override
  void initState() {
    selectedIndex = null;
    super.initState();
  }

  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerCVV = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Payment Method"),
      backgroundColor: ColorsFaces.colorThird,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TextButtonWhiteWidget(
              width: 174.5,
              hight: 56,
              onPressed: () {
                log("Add Another Method");
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: BottomSheetAddPaymentMethodWidget(),
                  ),
                );
              },
              borderColor: Color(0xffE3E3E3),
              label: "Add Another Method",
              buttonColor: ColorsFaces.colorThird,
              fontsStyle:
                  FontsStyle.white14w700.copyWith(color: Color(0xff1A1A1A)),
            ),
            TextButtonColorMainWidget(
                width: 174.5,
                hight: 56,
                label: "Chose",
                onPressed: () {
                  log("Chose");
                },
                colorLabel: selectedIndex == null ? Color(0xff43152A) : null,
                background: selectedIndex == null ? Color(0xffE3E3E3) : null),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            spacing: 5,
            children: [
              CardMethodPaymentWidget(
                image: IconsUrl.visa,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.icon3,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.icon2,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.tabby,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 3,
                onTap: () {
                  log("tabby");
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.tamara,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 4,
                onTap: () {
                  log("tamara");
                  setState(() {
                    selectedIndex = 4;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.icon1,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 5,
                onTap: () {
                  log("icon1");
                  setState(() {
                    selectedIndex = 5;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: IconsUrl.play,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 6,
                onTap: () {
                  log("play");
                  setState(() {
                    selectedIndex = 6;
                  });
                },
              ),
              CardMethodPaymentOfWalletWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
