// ignore_for_file: file_names
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Information_User_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Account_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_More_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Settings_Widget.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsFaces.colorThird,
        appBar: CustomAppBarWidget(title: "My Profile", isShowBackArrow: false),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InformationUserWidget(),
                ItemAccountWidget(),
                ItemSettingsWidget(),
                ItemMoreWidget(),
              ],
            ),
          ),
        ));
  }
}
