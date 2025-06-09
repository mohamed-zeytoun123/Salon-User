// ignore_for_file: file_names

import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Cosmetic_Item_Card_Point_Widget.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Header_Points_Display_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class LoyaltyPointsPage extends StatelessWidget {
  const LoyaltyPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Loyalty Points"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            HeaderPointsDisplayWidget(),
            Text(
              "Loyalty Point",
              style: FontsStyle.c24w400Meditative
                  .copyWith(color: Color(0xff383838)),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ServicesDetailsPage()));
                        },
                        child: CosmeticItemCardPointWidget(
                          item: DummyData.pointRewardItemsListDUMMY[index],
                        ));
                  },
                  itemCount: DummyData.pointRewardItemsListDUMMY.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
