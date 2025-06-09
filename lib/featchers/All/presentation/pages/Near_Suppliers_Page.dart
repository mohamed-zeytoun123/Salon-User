// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source_impl.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/widgets/top_tab_bar_supplienrs_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NearSuppliersPage extends StatelessWidget {
  const NearSuppliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: HomeRemotDataSourceImpl(api: API(dio: Dio()))),
      child: Scaffold(
        appBar: CustomAppBarWidget(title: "Near Suppliers"),
        backgroundColor: ColorsFaces.colorThird,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TopTabBarSupplienrsWidget(
            isRowSearchTop: true,
          ),
        ),
      ),
    );
  }
}
