// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/All/presentation/widget/All_Product_Widget.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source_impl.dart';

import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: HomeRemotDataSourceImpl(api: API(dio: Dio()))),
      child: Scaffold(
        appBar: CustomAppBarWidget(title: "All Product"),
        backgroundColor: ColorsFaces.colorThird,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: AllProductWidget(),
        ),
      ),
    );
  }
}
