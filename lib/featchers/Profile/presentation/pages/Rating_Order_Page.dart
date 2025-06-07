// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Dotted_Border_Text_Field.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Give_rating_widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Upload_Photo_Widget.dart';
import 'package:flutter/material.dart';

class RatingOrderPage extends StatelessWidget {
  RatingOrderPage({super.key});
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(169, 252, 252, 252),
      body: Center(
        child: Container(
          height: 564,
          width: 388,
          decoration: BoxDecoration(
            color: ColorsFaces.colorThird,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rating",
                style: FontsStyle.whit24w700.copyWith(color: Color(0xff2A2A2A)),
              ),
              ProviderDetailsWidget(
                  fontSizeName: 14,
                  fontSizespecialty: 12,
                  sizeimage: 29.5,
                  imageUrl: "https://picsum.photos/124/86?random=47",
                  name: "Provider Name",
                  specialty: "Skin Care Specialist"),
              Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GiveRatingWidget(),
                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        "You Rated Services Provider 4 STars",
                        style: FontsStyle.whit16w500
                            .copyWith(color: Color(0xff717171)),
                      ),
                    ],
                  ),
                  DottedBorderTextField(
                    controller: controller,
                    hintText: "add your Comment",
                    height: 63,
                    width: 352,
                  ),
                  Text("Add pictures of the service after implementation",
                      style: FontsStyle.whit16w400.copyWith(
                        color: Color(0xffA3A3A3),
                        fontSize: 15,
                      )),
                  UploadPhotoWidget(),
                  TextButtonColorMainWidget(
                      width: 280,
                      hight: 46,
                      label: "Send",
                      onPressed: () {
                        log("Send");
                        Navigator.pop(context);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
