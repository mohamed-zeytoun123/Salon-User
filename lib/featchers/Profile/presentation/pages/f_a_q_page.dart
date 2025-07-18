// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Account_List_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Payment_List_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Services_List_Widget.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "FAQ"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
