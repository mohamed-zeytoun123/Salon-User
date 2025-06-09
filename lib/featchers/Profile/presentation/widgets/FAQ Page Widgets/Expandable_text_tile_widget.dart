// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app2/core/style/fonts_style.dart';

class ExpandableTextTile extends StatefulWidget {
  final String title;
  final String content;

  const ExpandableTextTile({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  State<ExpandableTextTile> createState() => _ExpandableTextTileState();
}

class _ExpandableTextTileState extends State<ExpandableTextTile> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _toggleExpansion,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: FontsStyle.white14w700
                      .copyWith(color: const Color(0xff000000)),
                ),
              ),
              Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_down_outlined
                    : Icons.keyboard_arrow_right_outlined,
                color: const Color.fromARGB(89, 0, 0, 0),
                size: 30,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        if (_isExpanded)
          Text(
            widget.content,
            style: FontsStyle.whit12w400
                .copyWith(color: const Color(0xff666666), height: 2),
          ),
        Divider(color: Color.fromARGB(44, 102, 102, 102)),
      ],
    );
  }
}
