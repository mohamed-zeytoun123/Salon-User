// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/featchers/All/presentation/pages/All_Product_Page.dart';
import 'package:app2/featchers/Home/presentation/pages/Services_Category_page.dart';
import 'package:app2/featchers/Home/presentation/widgets/Custom_Container_widget.dart';
import 'package:flutter/material.dart';

class ButtonConstantWidget {
  static Widget customContainerServices(
      BuildContext context, int serviceCount) {
    return CustomContainerWidget(
      imagePath: IconsUrl.vector,
      title: "Services",
      subtitle: "$serviceCount Services",
      icon: Icons.arrow_forward_ios,
      onTap: () {
        log("Services");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServicesCategoryPage()),
        );
      },
    );
  }

  //!____________________________________________________________________________!//
  static Widget customContainerProduct(BuildContext context, int productCount) {
    return CustomContainerWidget(
      imagePath: IconsUrl.group,
      title: "Products",
      subtitle: "$productCount Products",
      icon: Icons.arrow_forward_ios,
      onTap: () {
        log("Product");

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllProductPage()),
        );
      },
    );
  }
}

  //  context.push(RoutesPath.servicesCategory);
  //          context.push(RoutesPath.allProduct);
