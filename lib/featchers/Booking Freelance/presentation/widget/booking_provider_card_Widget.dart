// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
import 'package:app2/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BookingProviderCardWidget extends StatelessWidget {
  const BookingProviderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 119,
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
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Company name",
                    style: FontsStyle.whit20ww700
                        .copyWith(color: Color(0xff383838)),
                  ),
                  RatingStarsWidget(
                    isShowRating: true,
                    rating: 5,
                    sizeStar: 20,
                    titleStyle: FontsStyle.whit18w400FamiljenGrotesk,
                  ),
                ],
              ),
            ),
            DottedBorder(
              dashPattern: [1, 1],
              color: Color(0xffD9D9D9),
              strokeWidth: 1,
              customPath: (size) {
                return Path()
                  ..moveTo(0, 0)
                  ..lineTo(size.width, 0);
              },
              child: SizedBox(
                width: double.infinity,
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      CircleAvatar(
                        radius: 19.5,
                        backgroundImage: NetworkImage(
                          "https://picsum.photos/124/86?random=165",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Provider Name",
                            style: FontsStyle.whit12w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          Text(
                            "Skin Care Specialist",
                            style: FontsStyle.whit10w400
                                .copyWith(color: Color(0xff666666)),
                          ),
                        ],
                      ),
                    ],
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
                        MaterialPageRoute(
                            builder: (context) => FrelanceProfilePage()),
                      );
                    },
                    borderColor: Color(0xffE3E3E3),
                    fontsStyle: FontsStyle.white13w400
                        .copyWith(color: Color(0XFF000000)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
