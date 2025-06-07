// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ServicesQuantitySelectorWidget extends StatefulWidget {
  const ServicesQuantitySelectorWidget({
    super.key,
    required this.price,
    required this.onCostChanged,
    required this.addedServices,
    required this.index,
  });

  final int index;
  final List<AddServiceModel> addedServices;
  final double price;
  final void Function(double) onCostChanged;

  @override
  State<ServicesQuantitySelectorWidget> createState() => _ServicesQuantitySelectorWidgetState();
}

class _ServicesQuantitySelectorWidgetState extends State<ServicesQuantitySelectorWidget> {
  int _number = 1;
  double _cost = 0;

  @override
  void initState() {
    super.initState();
    _number = widget.addedServices[widget.index].number;
    _cost = _number * widget.price;
  }

  void _updateCost() {
    setState(() {
      _cost = _number * widget.price;

      widget.addedServices[widget.index].number = _number;

      widget.onCostChanged(_cost);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(10),
          dashPattern: [3, 2],
          color: Color(0xffD9D9D9),
          strokeWidth: 1,
          child: Container(
            width: 276,
            height: 55,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffD9D9D9),
                  child: IconButton(
                    onPressed: () {
                      if (_number > 1) {
                        setState(() {
                          _number--;
                          _updateCost();
                        });
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Color(0xff3E0C0C),
                      size: 28,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 24,
                  ),
                ),
                Text(
                  "$_number",
                  style:
                      FontsStyle.whit24w700.copyWith(color: Color(0xff3E0C0C)),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffD9D9D9),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _number++;
                        _updateCost();
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Color(0xff3E0C0C),
                      size: 28,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              if (_number != 9) {
                setState(() {
                  double itemCost = _number * widget.price;

                  widget.onCostChanged(-itemCost);

                  widget.addedServices.removeAt(widget.index);

                  log("Service removed, cost deducted: $itemCost");

                  _number = 0;

                  if (widget.addedServices.isEmpty) {
                    Navigator.pop(context);
                  }
                });
              }
              setState(() {});
            },
            borderRadius: BorderRadius.circular(30),
            child: Icon(
              size: 50,
              Icons.delete_forever_sharp,
              color: Color(0xffF62973),
            ),
          ),
        )
      ],
    );
  }
}
