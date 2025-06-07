// ignore_for_file: file_names, deprecated_member_use

import 'package:app2/featchers/All/presentation/widget/Custom_Toggle_State_Buy.dart';
import 'package:app2/featchers/Home/data/model/Product_model_DUMMY.dart';
import 'package:app2/featchers/Product%20Details/presentation/pages/Product_Details_Page.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModelDUMMY product;
  final bool isReadyToPurchase;
  const ProductCardWidget({
    super.key,
    required this.product,
    this.isReadyToPurchase = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      child: Container(
        width: 173,
        height: 200,
        margin: EdgeInsets.only(left: 5, bottom: 15, right: 5),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 101,
                width: double.infinity,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "${product.originalPrice}\$",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF50B5F),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color(0xffF50B5F),
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "${product.discountedPrice}\$",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff383838),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      if (!isReadyToPurchase)
                        Text(
                          product.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff807C7E),
                          ),
                        )
                      else
                        CustomToggleStateBuyWidget()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
