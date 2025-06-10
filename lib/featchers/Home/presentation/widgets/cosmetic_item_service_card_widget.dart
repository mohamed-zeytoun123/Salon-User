// ignore_for_file: file_names, deprecated_member_use
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/Cosmetic_Item_Model_Dummy.dart';
import 'package:app2/featchers/Home/data/model/provider_model.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:flutter/material.dart';

class CosmeticItemServiceCardWidget extends StatelessWidget {
  final CosmeticItemModelDUMMY item;
  final ServiceModel model;

  const CosmeticItemServiceCardWidget({
    super.key,
    required this.item,
    required this.model,
  });

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
                    height: 90,
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
                    top: 70,
                    child: Text(
                      model.branch.provider.type.providerTypeText,
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
                  image: NetworkImage(item.profileImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      model.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xff121212),
                      ),
                    ),
                    Text(
                      "\$${model.price}",
                      style: FontsStyle.whit12w700
                          .copyWith(color: Color(0xff3E0C0C)),
                    )
                  ],
                ),
                //! اسم المدينة فارغ بلبوست مان مافي 🤷‍♂️🤷‍♂️
                Text("Dubai ${model.branch.address.region.city.name}",
                    style: FontsStyle.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Row(
                  children: [
                    Image.asset(
                      IconsUrl.location,
                      color: Color(0xff000000),
                    ),
                    SizedBox(width: 5),
                    Text("${model.branch.distance} km away",
                        style: FontsStyle.whit11w700.copyWith(
                          color: Color(0xff000000),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff000000),
                          decorationThickness: 3,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Color(0xff000000),
                      size: 20,
                    ),
                    Text(
                      "${item.rating} (${item.reviewsCount} Reviews)",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 11,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
