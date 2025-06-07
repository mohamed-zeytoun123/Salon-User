// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Product_Quantity_Selector_Widget.dart';
import 'package:flutter/material.dart';

class ProductQuantityPriceWidget extends StatelessWidget {
  const ProductQuantityPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name Title",
                style:
                    FontsStyle.whit20ww700.copyWith(color: Color(0xff000000)),
              ),
              Column(
                children: [
                  Text(
                      overflow: TextOverflow.ellipsis,
                      "23.3\$",
                      style: FontsStyle.whit24w700.copyWith(
                        color: Color(0xff383838),
                      )),
                  Text(
                      overflow: TextOverflow.ellipsis,
                      "23.4\$",
                      style: FontsStyle.white14w400.copyWith(
                        color: Color(0xffF50B5F),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xffF50B5F),
                        decorationStyle: TextDecorationStyle.solid,
                      )),
                ],
              ),
            ],
          ),
          ProductQuantitySelectorWidget()
        ],
      ),
    );
  }
}
