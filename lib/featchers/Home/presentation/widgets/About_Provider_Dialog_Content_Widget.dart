// ignore_for_file: file_names
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/AboutService_Provider_Description_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Gallery_Work_Images_List_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Provider_Address_Section_Widget.dart';
import 'package:flutter/material.dart';

class AboutProviderDialogContentWidget extends StatelessWidget {
  const AboutProviderDialogContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 787,
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: ColorsFaces.colorThird,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("About Provider", style: FontsStyle.c24w400Meditative),
            AboutServiceProviderDescriptionWidget(),
            Divider(color: const Color.fromARGB(59, 0, 0, 0)),
            GalleryWorkImagesListWidget(),
            Divider(color: const Color.fromARGB(59, 0, 0, 0)),
            ProviderAddressSectionWidget(),
          ],
        ),
      ),
    );
  }
}
