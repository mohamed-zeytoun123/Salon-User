// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Canceled_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Complete_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Pending_Widget.dart';
import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: Text(
            "My Order",
            style: FontsStyle.c28w400Meditative.copyWith(
              color: const Color(0xff000000),
            ),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Column(
              children: [
                const Divider(
                    color: Color(0xffD9D9D9), thickness: 1.0, height: 1),
                TabBar(
                  unselectedLabelStyle:
                      FontsStyle.white24w400Meditative.copyWith(
                    fontSize: 22,
                    color: Color(0xff4A172E),
                  ),
                  labelStyle: FontsStyle.white24w400Meditative.copyWith(
                    color: Color(0xff4A172E),
                    fontSize: 22,
                  ),
                  indicatorColor: Color(0xFF4E1830),
                  indicatorWeight: 3,
                  labelColor: Color(0xFF4E1830),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "Pending"),
                    Tab(text: "Complete"),
                    Tab(text: "Canceled"),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: ColorsFaces.colorThird,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: const TabBarView(
            children: [
              ListOrderPendingWidget(),
              ListOrderCompleteWidget(),
              ListOrderCanceledWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
