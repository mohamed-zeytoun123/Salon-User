// ignore_for_file: file_names, deprecated_member_use
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Card_Item_Wallet_Widget.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Form_Header_Of_Wallet_Widget.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Gift_Friend_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Wallet"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderOfWalletWidget(),
              GiftFriendWidget(),
              Text(
                "History",
                style: FontsStyle.c24w400Meditative
                    .copyWith(color: Color(0xff383838)),
              ),
              for (var model in DummyData.cardItemWalletListDUMMY)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CardItemWalletWidget(model: model),
                ),
              // Expanded(
              //   child: ListView.separated(
              //       itemBuilder: (context, index) => CardItemWalletWidget(
              //             model: DummyData.cardItemWalletList[index],
              //           ),
              //       separatorBuilder: (context, index) => SizedBox(height: 10),
              //       itemCount: DummyData.cardItemWalletList.length),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
