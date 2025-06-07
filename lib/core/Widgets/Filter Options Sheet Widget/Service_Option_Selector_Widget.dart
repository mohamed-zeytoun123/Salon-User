// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ServiceOptionSelectorWidget extends StatefulWidget {
  final Function(String) onSelectionChanged;

  const ServiceOptionSelectorWidget(
      {super.key, required this.onSelectionChanged});

  @override
  _ServiceOptionSelectorWidgetState createState() =>
      _ServiceOptionSelectorWidgetState();
}

class _ServiceOptionSelectorWidgetState extends State<ServiceOptionSelectorWidget> {
  int _selectedIndex = 0;
  final List<String> _options = ["Salon", "In home"];

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: selectButton("Salon", 0)),
        Expanded(child: selectButton("In home", 1)),
      ],
    );
  }

  Widget selectButton(String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });

        widget.onSelectionChanged(_options[index]);
      },
      child: Container(
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              isSelected ? ColorsFaces.colorSecondary : const Color(0xffEFEFFB),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          label,
          style: FontsStyle.white13w700NunitoSans.copyWith(
            color: isSelected ? Colors.white : const Color(0xff57597E),
          ),
        ),
      ),
    );
  }
}
