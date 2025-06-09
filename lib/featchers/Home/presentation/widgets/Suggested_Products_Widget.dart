// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class SuggestedProductsWidget extends StatelessWidget {
  const SuggestedProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderWidget(
            title: "Suggested products",
            titleStyle: FontsStyle.c24w400Meditative
                .copyWith(color: Color(0xff4A172E))),
        SizedBox(
          height: 218,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCardWidget(
                  product: DummyData.productsDUMMY[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: DummyData.productsDUMMY.length),
        ),
      ],
    );
  }
}
