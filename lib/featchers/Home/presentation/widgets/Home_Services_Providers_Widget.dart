// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/All/presentation/pages/Near_Suppliers_Page.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/freelancer_card_widget.dart';
import 'package:flutter/material.dart';

class HomeServicesProvidersWidget extends StatelessWidget {
  const HomeServicesProvidersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomHeaderWidget(
              title: "home services providers",
              onTap: () {
                log("home services providers");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NearSuppliersPage()));
              },
              titleStyle: FontsStyle.c24w400Meditative
                  .copyWith(color: Color(0xff43152A))),
        ),
        SizedBox(
          width: double.infinity,
          height: 183,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 15, right: 15),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FreelancerCardWidget(
                  freelancer: DummyData.freelancersDUMMY[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: DummyData.freelancersDUMMY.length),
        ),
      ],
    );
  }
}
