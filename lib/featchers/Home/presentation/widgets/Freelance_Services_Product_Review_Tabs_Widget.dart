// ignore_for_file: file_names
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/about_tap_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Product_List_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Review_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services_List_Widget.dart';
import 'package:flutter/material.dart';

class FreelanceServicesProductReviewTabsWidget extends StatefulWidget {
  const FreelanceServicesProductReviewTabsWidget({
    super.key,
  });

  @override
  State<FreelanceServicesProductReviewTabsWidget> createState() =>
      _FreelanceServicesProductReviewTabsWidgetState();
}

class _FreelanceServicesProductReviewTabsWidgetState
    extends State<FreelanceServicesProductReviewTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
          indicatorWeight: 4,
          labelColor: Color.fromARGB(255, 82, 24, 47),
          labelStyle: FontsStyle.c24w400Meditative,
          unselectedLabelColor: const Color(0xffA4A4A4),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color.fromARGB(255, 82, 24, 47),
          tabs: const [
            Tab(text: "About"),
            Tab(text: "Services"),
            Tab(text: "Product"),
            Tab(text: "Review"),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              AboutTapWidget(),
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
