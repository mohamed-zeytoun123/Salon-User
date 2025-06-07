// ignore_for_file: file_names
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/FAQ_Account_List_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/FAQ_Payment_List_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/FAQ_Services_List_Widget.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "FAQ"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FAQAccountListWidget,
              FAQPaymentListWidget,
              FAQServicesListWidget
            ],
          ),
        ),
      ),
    );
  }
}
