// ignore_for_file: file_names

import 'package:app2/core/Widgets/Constant%20Widgets/Button_Constant_widget.dart';
import 'package:app2/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceProductExploreWidget extends StatefulWidget {
  const ServiceProductExploreWidget({
    super.key,
  });

  @override
  State<ServiceProductExploreWidget> createState() =>
      _ServiceProductExploreWidgetState();
}

class _ServiceProductExploreWidgetState
    extends State<ServiceProductExploreWidget> {
  @override
  void initState() {
    context.read<HomeCubit>().getProducts();
    context.read<HomeCubit>().getService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          "Explore Services & product",
          style: FontsStyle.c24w400Meditative,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
              if (state.isLoadingService) {
                return shimmerSliderPlaceholder();
              }
              if (state.errorService != null) {
                return Center(child: Text(state.errorService!.message));
              }
              if (state.serviceList == null || state.serviceList!.isEmpty) {
                return const Center(child: Text("No Services Available"));
              } else {
                return ButtonConstantWidget.customContainerServices(
                  context,
                  state.serviceList?.length ?? 0,
                );
              }
            }),
            BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
              if (state.isLoadingProducts) {
                return shimmerSliderPlaceholder();
              }

              if (state.errorProduct != null) {
                return Center(child: Text(state.errorProduct!.message));
              }

              if (state.productList == null || state.productList!.isEmpty) {
                return const Center(child: Text("No Products Available"));
              } else {
                return ButtonConstantWidget.customContainerProduct(
                  context,
                  state.productList?.length ?? 0,
                );
              }
            }),
          ],
        )
      ],
    );
  }
}
