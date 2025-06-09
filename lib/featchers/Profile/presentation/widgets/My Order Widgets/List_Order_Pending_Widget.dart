// ignore_for_file: file_names
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Type%20Order/order_pending_widget.dart';
import 'package:flutter/material.dart';

class ListOrderPendingWidget extends StatelessWidget {
  const ListOrderPendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: DummyData.orderPendingListDUMMY.length,
      itemBuilder: (context, index) {
        return OrderPendingWidget(model: DummyData.orderPendingListDUMMY[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
    );
  }
}
