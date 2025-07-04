// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Home_Services_Providers_Widget.dart';
import 'package:app2/core/Widgets/nearest_suppliers_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Offers_And_Image_Slider_Widget.dart';
import 'package:app2/core/Widgets/row_search_filter_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Service_Product_Explore_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services_Section_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Suggested_Products_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Top_Suppliers_Widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:flutter/material.dart';

class GuestPage extends StatelessWidget {
  const GuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Home", isShowBackArrow: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowSearchFilterWidget(),
              OffersAndImageSliderWidget(),
              ServicesSectionWidget(),
              ServiceProductExploreWidget(),
              TopSuppliersWidget(title: "Top Suppliers"),
              NearestSuppliersWidget(),
              HomeServicesProvidersWidget(),
              SuggestedProductsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
