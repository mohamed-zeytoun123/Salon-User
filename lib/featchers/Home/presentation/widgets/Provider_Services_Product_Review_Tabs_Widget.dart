// ignore_for_file: file_names
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Product_List_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Review_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services_List_Widget.dart';
import 'package:flutter/material.dart';

class ProviderServicesProductReviewTabsWidget extends StatefulWidget {
  const ProviderServicesProductReviewTabsWidget({
    super.key,
  });

  @override
  State<ProviderServicesProductReviewTabsWidget> createState() =>
      _ProviderServicesProductReviewTabsWidgetState();
}

class _ProviderServicesProductReviewTabsWidgetState
    extends State<ProviderServicesProductReviewTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorWeight: 3,
          labelColor: ColorsFaces.colorSecondary,
          labelStyle: FontsStyle.c24w400Meditative,
          unselectedLabelColor: const Color(0xffA4A4A4),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: ColorsFaces.colorSecondary,
          tabs: const [
            Tab(text: "Services"),
            Tab(text: "Product"),
            Tab(text: "Review"),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ServicesListWidget(isFreelance: false),
              ProductListWidget(),
              TapReviewWidget(
                listRate: DummyData.reviewsDUMMY,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
