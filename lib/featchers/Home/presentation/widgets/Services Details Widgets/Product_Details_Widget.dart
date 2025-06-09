// ignore_for_file: file_names, use_full_hex_values_for_flutter_colors, library_private_types_in_public_api
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Description_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Review_Widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatefulWidget {
  final String description;
  final String labelButton;
  final IconData? iconButton;
  final List<RateProductDetailsModelDUMMY> listRate;
  final Color selectedTabColor;
  final Color? buttonColor;
  final Color iconButtonColor;
  final bool isButtonIconFirst;
  final VoidCallback? onPressed;

  const ProductDetailsWidget({
    super.key,
    required this.description,
    required this.listRate,
    required this.selectedTabColor,
    this.buttonColor,
    required this.iconButtonColor,
    required this.isButtonIconFirst,
    required this.labelButton,
    this.iconButton,
    this.onPressed,
  });

  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonMain = TextButtonColorMainWidget(
      background: widget.buttonColor,
      width: 280,
      hight: 56,
      sizeIcon: 20,
      label: widget.labelButton,
      iconData: widget.iconButton,
      onPressed: widget.onPressed ?? () {},
    );

    Widget buttonIcon = TextButtonWhiteWidget(
      width: 59,
      borderColor: const Color(0xff0000000A),
      hight: 55,
      iconColor: widget.iconButtonColor,
      iconData: Icons.favorite_outline_rounded,
      sizeIcon: 40,
      onPressed: () {},
    );

    return Container(
      color: const Color(0xffFFFFFF),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                controller: tabController,
                indicatorWeight: 3,
                labelColor: widget.selectedTabColor,
                unselectedLabelColor: const Color(0xffA4A4A4),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: widget.selectedTabColor,
                labelStyle: FontsStyle.white24w400Meditative,
                tabs: const [
                  Tab(text: "Description"),
                  Tab(text: "Review"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    TapDescriptionWidget(description: widget.description),
                    TapReviewWidget(listRate: widget.listRate),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.isButtonIconFirst) buttonIcon,
                buttonMain,
                if (!widget.isButtonIconFirst) buttonIcon,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
