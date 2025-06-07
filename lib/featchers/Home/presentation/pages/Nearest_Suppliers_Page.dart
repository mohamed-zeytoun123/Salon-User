// ignore_for_file: file_names

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/assets/image_url.dart';
import 'package:flutter/material.dart';

class NearestSuppliersPage extends StatelessWidget {
  const NearestSuppliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
          title: "Nearest Suppliers", isShowBackArrow: false),
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                ImageUrl.map,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
