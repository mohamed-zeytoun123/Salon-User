// ignore_for_file: file_names

import 'package:app2/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/image_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersAndImageSliderWidget extends StatefulWidget {
  const OffersAndImageSliderWidget({
    super.key,
  });

  @override
  State<OffersAndImageSliderWidget> createState() =>
      _OffersAndImageSliderWidgetState();
}

class _OffersAndImageSliderWidgetState
    extends State<OffersAndImageSliderWidget> {
  @override
  void initState() {
    context.read<HomeCubit>().getSlider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          maxLines: 1,
          "Look at the latest offers and benefit from the application services",
          style: FontsStyle.white14w400
              .copyWith(fontSize: 11.5, color: Color(0xff515151)),
        ),
        BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state.isLoadingSliders) {
            return Center(child: shimmerSliderPlaceholder());
          } else if (state.errorSliders != null) {
            return Center(child: Text("Error: ${state.errorSliders!.message}"));
          } else if (state.slidersList != null &&
              state.slidersList!.isNotEmpty) {
            final List<String> imageUrls =
                state.slidersList!.map((slider) => slider.url).toList();

            return InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => ServicesDetailsPage()),
                // );
              },
              child: ImageSliderWidget(
                  activeDotColor: Color(0xff972625),
                  height: 232.0082550048828,
                  width: double.infinity,
                  images: imageUrls),
            );
          } else {
            return const Center(child: Text("No sliders available"));
          }
        }),
      ],
    );
  }
}
