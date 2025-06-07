// ignore_for_file: file_names

import 'package:app2/featchers/Booking%20Freelance/data/model/Service_Item_buy_Model.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Service_Item_With_Price_Tile_Widget.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/style/Fonts_style.dart';

class ExpandableServicePriceTile extends StatefulWidget {
  const ExpandableServicePriceTile({
    super.key,
    required this.items,
  });
  final List<ServiceItemBuyModelDUMMY> items;

  @override
  State<ExpandableServicePriceTile> createState() =>
      _ExpandableServicePriceTileState();
}

class _ExpandableServicePriceTileState
    extends State<ExpandableServicePriceTile> {
  bool _isExpanded = false;
  double _total = 0;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  void _calculateTotal() {
    double total = 0;
    for (var item in widget.items) {
      total += item.quantity * item.priceItem;
    }
    _total = double.parse(total.toStringAsFixed(1));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: _toggleExpansion,
        child: Row(
          spacing: 50,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Services Price",
                    style: FontsStyle.whit16w700
                        .copyWith(color: const Color(0xff000000)),
                  ),
                  Text("\$${_total.toStringAsFixed(1)}",
                      style: FontsStyle.whit16w700.copyWith(
                        color: Color(0xff434343),
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ),
            Icon(
              _isExpanded
                  ? Icons.keyboard_arrow_down_outlined
                  : Icons.keyboard_arrow_right_outlined,
              color: const Color(0xff000000),
              size: 30,
            ),
          ],
        ),
      ),
      if (_isExpanded)
        Align(
          alignment: Alignment.centerLeft,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return ServiceItemWithPriceTileWidget(
                name: item.name,
                quantity: item.quantity,
                priceItem: item.priceItem,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 5),
          ),
        )
    ]);
  }
}
