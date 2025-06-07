// ignore_for_file: file_names
import 'package:app2/core/assets/image_url.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Home/presentation/widgets/Provider_Header_Section_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Provider_Info_Hader_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Freelance_Services_Product_Review_Tabs_Widget.dart';
import 'package:app2/featchers/Product%20Details/presentation/widget/Product_Rating_Percentage_Widget%20.dart';
import 'package:flutter/material.dart';

class FrelanceProfilePage extends StatelessWidget {
  const FrelanceProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      body: Stack(
        children: [
          const ProviderHeaderSectionWidget(isFreelance: true),
          ProviderInfoHaderWidget(isFreelance: true),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 107,
                    height: 107,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 82, 24, 47),
                        width: 3,
                      ),
                      image: DecorationImage(
                        image: AssetImage(ImageUrl.girl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: Center(
                  child: ProductRatingPercentageWidget(
                    rating: 2.3,
                    colorform: Color.fromARGB(242, 185, 79, 114),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 310),
            child: FreelanceServicesProductReviewTabsWidget(),
          )
        ],
      ),
    );
  }
}
