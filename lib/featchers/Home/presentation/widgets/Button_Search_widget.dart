// ignore_for_file: file_names, deprecated_member_use
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/manager/class_search_admin.dart';
import 'package:flutter/material.dart';

class ButtonSearchWidget extends StatefulWidget {
  const ButtonSearchWidget({super.key});

  @override
  State<ButtonSearchWidget> createState() => _ButtonSearchWidgetState();
}

class _ButtonSearchWidgetState extends State<ButtonSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 287,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.all(10),
        ),
        child: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Text(
              "Search",
              style: FontsStyle.whit12w400.copyWith(color: Color(0xffCBCBCB)),
            ),
          ],
        ),
        onPressed: () async {
          await showSearch(
            context: context,
            delegate: Search(),
          );
        },
      ),
    );
  }
}
