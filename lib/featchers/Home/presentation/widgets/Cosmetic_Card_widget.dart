// ignore_for_file: file_names, deprecated_member_use
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/Cosmet_providers_Model.dart';
import 'package:app2/featchers/Home/data/model/branch_model.dart';
import 'package:flutter/material.dart';

class CosmeticCardWidget extends StatelessWidget {
  final CosmeticProvidersModelDUMMY item;
  final BranchModel branch;
  const CosmeticCardWidget({
    super.key,
    required this.item,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 259,
      height: 228,
      margin: const EdgeInsets.only(bottom: 10),
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
                    height: 137,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 10,
                    bottom: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xffFFFFFF),
                          size: 20,
                        ),
                        Text(
                          "${item.rating} (${item.reviews} Reviews)",
                          style: FontsStyle.whit11w200
                              .copyWith(color: Color(0xffFFFFFF)),
                        ),
                      ],
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
                  image: NetworkImage(item.profileImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9,
            bottom: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(branch.name,
                    style: FontsStyle.white14w700
                        .copyWith(color: Color(0xff121212))),
                Text(branch.address.region.name,
                    style: FontsStyle.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Text(branch.address.region.name ,
                    style: FontsStyle.whit10w400
                        .copyWith(color: Color(0xff43152A))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
