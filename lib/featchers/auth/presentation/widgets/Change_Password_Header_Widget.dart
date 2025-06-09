// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class ChangePasswordHeader extends StatelessWidget {
  const ChangePasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 52, bottom: 18, left: 18),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
          Text(
            "Change Password",
            style: FontsStyle.white24w400Meditative,
          ),
        ],
      ),
    );
  }
}
