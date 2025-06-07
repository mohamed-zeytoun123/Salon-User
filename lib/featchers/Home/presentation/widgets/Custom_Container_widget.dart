// ignore_for_file: file_names

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const CustomContainerWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 66.55,
        decoration: BoxDecoration(
          gradient: ColorsFaces.colorMain,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 43,
                height: 49.23,
                decoration: BoxDecoration(
                  color: Color(0xffECECEC),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Image.asset(imagePath)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB7B7B7)),
                  ),
                ],
              ),
              Icon(
                icon,
                size: 15,
                color: Color(0xffFFFFFF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
