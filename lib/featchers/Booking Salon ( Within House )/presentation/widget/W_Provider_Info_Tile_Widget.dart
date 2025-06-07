// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Frelance_Profile_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Provider_Show_Image_Name_Dis_Widget.dart';
import 'package:flutter/material.dart';

class WProviderInfoTileWidget extends StatelessWidget {
  const WProviderInfoTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: ProviderShowImageNameDisWidget(
              image: 'https://picsum.photos/124/86?random=165',
              name: "Provider Name",
              discription: "Skin Care Specialist",
            ),
          ),
          TextButtonWhiteWidget(
            width: 108,
            hight: 39,
            label: "View Profile",
            buttonColor: ColorsFaces.colorThird,
            onPressed: () {
              log("View Profile");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrelanceProfilePage()),
              );
            },
            borderColor: Color(0xffE3E3E3),
            fontsStyle:
                FontsStyle.white13w400.copyWith(color: Color(0XFF000000)),
          ),
        ],
      ),
    );
  }
}
