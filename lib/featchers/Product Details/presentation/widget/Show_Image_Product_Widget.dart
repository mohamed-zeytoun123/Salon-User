// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';

class ShowImageProductWidget extends StatelessWidget {
  final String imageUrl;

  const ShowImageProductWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 395,
      child: Stack(
        children: [
          Image(
            height: 395,
            width: double.infinity,
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: IconButton(
              onPressed: () {
                log("Image");
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xff43152A),
              ),
            ),
          )
        ],
      ),
    );
  }
}
