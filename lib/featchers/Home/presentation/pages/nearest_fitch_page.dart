// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/top_tab_bar_supplienrs_widget.dart';
import 'package:flutter/material.dart';

class NearestFetchPage extends StatelessWidget {

  const NearestFetchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBarWidget(title: "Near Suppliers"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 20,
          children: [
            Expanded(child: TopTabBarSupplienrsWidget()),
          ],
        ),
      ),
    );
  }
}
