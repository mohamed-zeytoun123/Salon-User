// ignore_for_file: file_names
import 'dart:developer';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:app2/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Product_Details_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:flutter/material.dart';

class ServicesDetailsPage extends StatelessWidget {
  const ServicesDetailsPage({super.key, required this.model});
  final ServiceModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "${model.name} Details"),
      body: Column(
        spacing: 15,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              spacing: 10,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  height: 212.08177185058594,
                  width: 388,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://picsum.photos/124/86?random=144",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        CircleAvatar(
                          radius: 23.5,
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/124/86?random=165",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.name,
                              style: FontsStyle.white24w400Meditative
                                  .copyWith(color: Color(0xff383838)),
                            ),
                            RatingStarsWidget(
                              isShowRating: true,
                              rating: 2,
                              sizeStar: 20,
                              titleStyle: FontsStyle.whit18w400FamiljenGrotesk,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                            overflow: TextOverflow.ellipsis,
                            "${model.newPrice}\$",
                            style: FontsStyle.whit24w700.copyWith(
                              color: Color(0xff383838),
                            )),
                        Text(
                            overflow: TextOverflow.ellipsis,
                            "${model.price}\$",
                            style: FontsStyle.white14w400.copyWith(
                              color: Color(0xffF50B5F),
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xffF50B5F),
                              decorationStyle: TextDecorationStyle.solid,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          CircleAvatar(
                            radius: 19.5,
                            backgroundImage: NetworkImage(
                              "https://picsum.photos/124/86?random=165",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.branch.provider.name,
                                style: FontsStyle.whit12w700
                                    .copyWith(color: Color(0xff000000)),
                              ),
                              Text(
                                model.branch.provider.categories.isNotEmpty
                                    ? model
                                        .branch.provider.categories.first.name
                                    : 'No Category',
                                style: FontsStyle.whit10w400
                                    .copyWith(color: Color(0xff666666)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextButtonWhiteWidget(
                          width: 108,
                          hight: 39,
                          label: "View Profile",
                          onPressed: () {
                            log("View Profile");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProviderProfilePage()));
                          },
                          borderColor: Color(0xffE3E3E3),
                          fontsStyle: FontsStyle.white13w400
                              .copyWith(color: Color(0XFF000000))),
                    ],
                  ),
                ),
                Expanded(
                    child: ProductDetailsWidget(
                  labelButton: "Book",
                  iconButton: Icons.calendar_today_outlined,
                  isButtonIconFirst: false,
                  iconButtonColor: ColorsFaces.colorSecondary,
                  selectedTabColor: ColorsFaces.colorSecondary,
                  description:
                      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ullamco Laboris Nisi Ut Aliquip Ex Ea Commodo Consequat. ",
                  listRate: DummyData.reviewsDUMMY,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
