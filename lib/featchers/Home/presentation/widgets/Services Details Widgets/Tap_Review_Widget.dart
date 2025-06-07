// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/Rate_Product_Details_Model.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Rating_Card_Widget.dart';
import 'package:flutter/material.dart';

class TapReviewWidget extends StatelessWidget {
  final List<RateProductDetailsModelDUMMY> listRate;

  const TapReviewWidget({
    super.key,
    required this.listRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${listRate.length} Review",
              style: FontsStyle.whit20ww700
                  .copyWith(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 80),
              scrollDirection: Axis.vertical,
              itemCount: listRate.length,
              itemBuilder: (context, index) {
                return RatingCardWidget(model: listRate[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
            )),
          ],
        ));
  }
}
