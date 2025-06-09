// ignore_for_file: file_names

import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/service_card_with_add_button_widget.dart';
import 'package:flutter/material.dart';

class ServicesListWidget extends StatelessWidget {
  const ServicesListWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemBuilder: (context, index) {
          return ServiceCardWithAddButtonWidget(
            isFreelance: isFreelance,
            model: DummyData.servicesListDUMMY[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: DummyData.servicesListDUMMY.length);
  }
}
