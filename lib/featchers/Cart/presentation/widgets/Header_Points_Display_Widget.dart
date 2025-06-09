// ignore_for_file: file_names

import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/widgets.dart';

class HeaderPointsDisplayWidget extends StatelessWidget {
  const HeaderPointsDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff3E0C0C),
            Color(0xff3E0C0C),
            Color.fromARGB(255, 107, 38, 38),
          ],
          stops: [0.4, 0.5, .8],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 31,
            height: 33,
            child: Image.asset(
              IconsUrl.point,
              color: ColorsFaces.colorThird,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "You have 10 points worth",
            style:
                FontsStyle.whit20w400.copyWith(color: ColorsFaces.colorThird),
          ),
          Text('\$70',
              style: FontsStyle.white26ww700.copyWith(
                color: ColorsFaces.colorThird,
                fontSize: 32,
              )),
        ],
      ),
    );
  }
}
