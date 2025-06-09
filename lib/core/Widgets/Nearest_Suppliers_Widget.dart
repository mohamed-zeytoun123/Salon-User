// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/All/presentation/pages/Near_Suppliers_Page.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/Cosmetic_Item_Card_nearest_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NearestSuppliersWidget extends StatefulWidget {
  const NearestSuppliersWidget({
    super.key,
  });

  @override
  State<NearestSuppliersWidget> createState() => _NearestSuppliersWidgetState();
}

class _NearestSuppliersWidgetState extends State<NearestSuppliersWidget> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getNearest();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderWidget(
            title: "Nearest Suppliers",
            onTap: () {
              log("Nearest Suppliers");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NearSuppliersPage()));
            },
            titleStyle: FontsStyle.white24w400Meditative
                .copyWith(color: Color(0xff43152A))),
        SizedBox(
          height: 225,
          width: double.infinity,
          child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
            if (state.isLoadingNearest) {
              return Center(
                child: shimmerSliderPlaceholder(),
              );
            } else if (state.errorNearest != null) {
              return Center(
                  child:
                      Text(state.errorNearest?.message ?? "Unexpected error"));
            } else if (state.listNearest == null ||
                state.listNearest!.isEmpty) {
              return Center(child: Text("No Data"));
            } else {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: CosmeticItemNearestCardWidget(
                        item: DummyData.cosmeticItemsListDUMMY[
                            index % DummyData.cosmeticItemsListDUMMY.length],
                        model: state.listNearest![index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: state.listNearest!.length);
            }
          }),
        ),
      ],
    );
  }
}
