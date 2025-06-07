// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class JoinAsPartnerWidget extends StatelessWidget {
  const JoinAsPartnerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 30),
          child: Text("Logo", style: FontsStyle.white45w700),
        ),
        Text("Have A Business Account?",
            style: FontsStyle.white35w400Meditative),
        const SizedBox(height: 13),
        Container(
          height: 46,
          width: 289,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Join as a partner",
              style: FontsStyle.black16w700,
            ),
          ),
        ),
      ],
    );
  }
}
