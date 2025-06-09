// ignore_for_file: file_names, deprecated_member_use

import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/data/model/point_reward_item_model.dart';
import 'package:flutter/material.dart';

class CosmeticItemCardPointWidget extends StatelessWidget {
  const CosmeticItemCardPointWidget({super.key, required this.item});
  final PointRewardItemModelDUMMY item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 184,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        color: Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  Image.network(
                    item.imageUrl,
                    width: double.infinity,
                    height: 109,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(144, 139, 28, 149),
                            Color(0x2A0A18A1).withOpacity(0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 90,
                    child: Text(
                      item.serviceType.name,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.25),
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
                image: DecorationImage(
                  image: NetworkImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff121212),
                  ),
                ),
                Text(item.location,
                    style: FontsStyle.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Image.asset(
                            IconsUrl.point,
                            fit: BoxFit.cover,
                            color: Color(0xff3E0C0C),
                          ),
                          Text(
                            "${item.points} Point",
                            style: FontsStyle.whit16w700
                                .copyWith(color: Color(0xff3E0C0C)),
                          ),
                        ],
                      ),
                      Text(
                        "${item.bookingDate.day} - ${item.bookingDate.month} - ${item.bookingDate.year}",
                        style: FontsStyle.whit10w400.copyWith(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
