// ignore_for_file: file_names

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Cart_bottom_Navigation_Bar_Widget.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Provider_Product_Price_Widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: 'Cart'),
      bottomNavigationBar: CartBottomNavigationBarWidget(),
      body: ProviderProductPriceWidget(),
    );
  }
}
