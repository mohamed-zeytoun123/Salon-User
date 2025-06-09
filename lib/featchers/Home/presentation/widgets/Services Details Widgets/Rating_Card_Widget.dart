// ignore_for_file: file_names, deprecated_member_use

import 'package:app2/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/User_Rating_Widget.dart';
import 'package:flutter/material.dart';

class RatingCardWidget extends StatelessWidget {
  final RateProductDetailsModelDUMMY model;
  const RatingCardWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: UserRatingWidget(model: model),
      ),
    );
  }
}
