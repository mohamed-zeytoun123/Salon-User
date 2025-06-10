// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:app2/featchers/Home/presentation/widgets/top_tab_bar_services_widget.dart';
import 'package:flutter/material.dart';

class ServicesFetchPage extends StatelessWidget {
  final ServiceModel model;
  const ServicesFetchPage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBarWidget(title: "${model.name} Services"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          spacing: 20,
          children: [
            Expanded(child: TopTabBarServicesWidget()),
          ],
        ),
      ),
    );
  }
}
