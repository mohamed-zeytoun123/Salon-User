// ignore_for_file: file_names

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Content_Card_Details_Provider_Service_Widget.dart';
import 'package:flutter/material.dart';

class CardDetailsProviderServiceWidget extends StatelessWidget {
  const CardDetailsProviderServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE3E3E3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        color: ColorsFaces.colorThird,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.5,
            backgroundImage: NetworkImage(
              "https://picsum.photos/124/86?random=165",
            ),
          ),
          ContentCardDetailsProviderServiceWidget()
        ],
      ),
    );
  }
}
