// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:app2/featchers/Product%20Details/presentation/widget/Product_Rating_Percentage_Widget%20.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:flutter/material.dart';

class ProviderProductInfoSectionWidget extends StatelessWidget {
  const ProviderProductInfoSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name Title",
                style:
                    FontsStyle.whit20ww700.copyWith(color: Color(0xff000000)),
              ),
              ProductRatingPercentageWidget(rating: 4.3)
            ],
          ),
          Text(
            "\$5.22",
            style: FontsStyle.whit20ww700.copyWith(color: Color(0xff3E0C0C)),
          ),
          Column(
            children: [
              Divider(
                color: Color(0xFFD3D3D3),
                thickness: 0.5,
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProviderDetailsWidget(
                    imageUrl: "https://picsum.photos/124/86?random=35",
                    name: "provider Name",
                    specialty: "provider Specialty",
                  ),
                  TextButtonWhiteWidget(
                    width: 108,
                    hight: 39,
                    buttonColor: const Color.fromARGB(111, 255, 255, 255),
                    onPressed: () {
                      log("onPressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProviderProfilePage()));
                    },
                    borderColor: Color(0xffE3E3E3),
                    label: "View Profile",
                    fontsStyle: FontsStyle.white13w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFD3D3D3),
                thickness: 0.5,
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
