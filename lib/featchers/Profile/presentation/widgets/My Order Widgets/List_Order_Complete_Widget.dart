// ignore_for_file: file_names
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Type%20Order/Order_Complete_Widget.dart';
import 'package:flutter/material.dart';

class ListOrderCompleteWidget extends StatelessWidget {
  const ListOrderCompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: DummyData.orderCompleteListDUMMY.length,
      itemBuilder: (context, index) {
        return OrderCompleteWidget(model: DummyData.orderCompleteListDUMMY[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
    );
  }
}
