// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/pages/cart_invoice_details_page.dart';
import 'package:flutter/material.dart';

class CartBottomNavigationBarWidget extends StatelessWidget {
  const CartBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: ColorsFaces.colorThird,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 5,
          children: [
            Divider(
              thickness: 1,
              color: const Color.fromARGB(83, 158, 158, 158),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",
                      style: FontsStyle.whit16w700.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff1E1918),
                      )),
                  Text("\$39.9",
                      style: FontsStyle.whit16w700.copyWith(
                        color: Color(0xff1E1918),
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ),
            TextButtonWhiteWidget(
              width: 343,
              hight: 56,
              onPressed: () {
                log("Continue To Payment");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartInvoiceDetailsPage()));
              },
              buttonColor: ColorsFaces.colorSecondary,
              borderColor: ColorsFaces.colorSecondary,
              label: "Continue To Payment",
              fontsStyle: FontsStyle.black16w700
                  .copyWith(color: ColorsFaces.colorThird),
            )
          ],
        ),
      ),
    );
  }
}
