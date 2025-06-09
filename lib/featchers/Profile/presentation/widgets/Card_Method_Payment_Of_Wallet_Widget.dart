// ignore_for_file: non_constant_identifier_names, file_names, deprecated_member_use

import 'dart:developer';

import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:flutter/material.dart';

class CardMethodPaymentOfWalletWidget extends StatelessWidget {
  const CardMethodPaymentOfWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.black.withOpacity(0.2),
        highlightColor: Colors.black.withOpacity(0.1),
        onTap: () {
          log("Wallet");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WalletPage()));
        },
        child: Ink(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFE3E3E3),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: Image.asset(IconsUrl.wallet, fit: BoxFit.contain),
                    ),
                    Text(
                      "Wallet",
                      style: FontsStyle.whit16w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
