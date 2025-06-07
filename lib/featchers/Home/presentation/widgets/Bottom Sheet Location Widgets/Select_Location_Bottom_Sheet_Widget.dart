// ignore_for_file: file_names
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/image_url.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/Label_App_Bar_Bottom_Sheet_Widget.dart';
import 'package:app2/featchers/auth/presentation/pages/Select_Location_Page.dart';
import 'package:flutter/material.dart';

class SelectableBottomSheetWidget extends StatefulWidget {
  const SelectableBottomSheetWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectableBottomSheetWidgetState createState() =>
      _SelectableBottomSheetWidgetState();
}

class _SelectableBottomSheetWidgetState
    extends State<SelectableBottomSheetWidget> {
  int? selectedIndex;
  bool isAddNew = false;
  final List<String> items = [
    "Country Name  City Name Area & Street Name - 23 .....",
    "Country Name  City Name Area & Street Name - 23 .....",
    "Country Name  City Name Area & Street Name - 23 .....",
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
      child: SizedBox(
        height: 611,
        child: ColoredBox(
          color: Color(0xffFDFDFD),
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 40),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelAppBarBottomSheetWidget(),
                isAddNew ? _buildAddNewPage() : _buildSavedLocationsPage(),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        TextButtonColorMainWidget(
                          hight: 56,
                          width: 174.5,
                          label: "Confirm",
                          onPressed: () {
                            setState(() {
                              isAddNew = false;
                            });
                            if (selectedIndex != null) {
                              Navigator.pop(context, items[selectedIndex!]);
                            }
                          },
                        ),
                        TextButtonWhiteWidget(
                            width: 174.5,
                            hight: 56,
                            label: "Add new",
                            onPressed: () {
                              setState(() {
                                isAddNew = true;
                              });
                            },
                            // ignore: use_full_hex_values_for_flutter_colors
                            borderColor: Color(0xff140C091A),
                            fontsStyle: FontsStyle.whit16w700
                                .copyWith(color: Color(0xff1A1A1A))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSavedLocationsPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildItem(0, "Home"),
        Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
        ),
        _buildItem(1, "Work"),
        Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
        ),
        _buildItem(2, "Sister Home"),
      ],
    );
  }

  Widget _buildItem(int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: 69,

        // margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xffE3E3E3) : Color(0xffFDFDFD),
          border: Border.all(
            color: selectedIndex == index
                ? ColorsFaces.colorSecondary
                : Color(0xffFDFDFD),
            width: selectedIndex == index ? 3 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: FontsStyle.white24w400Meditative
                          .copyWith(color: ColorsFaces.colorSecondary)),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    items[index],
                    style: FontsStyle.white14w400
                        .copyWith(color: Color(0xff515151)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNewPage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Country",
                      style: FontsStyle.whit16w700
                          .copyWith(color: Color(0xff121212)),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: TextFormFieldStyle.formOne("Country"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                      style: FontsStyle.whit16w700
                          .copyWith(color: Color(0xff121212)),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: TextFormFieldStyle.formOne("City"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "Area & Street",
                style: FontsStyle.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              TextFormField(
                decoration: TextFormFieldStyle.formOne("Area & Street"),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: double.infinity,
                  height: 81,
                  child: Image(
                    image: AssetImage(ImageUrl.map3),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                child: Text(
                  "Select the location on the map",
                  style: FontsStyle.white13w400.copyWith(
                      color: Color(0xff666666),
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Color(0xff666666)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectLocation(onPressed: () {
                                Navigator.pop(context);
                              })));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
