// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/row_search_filter_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source_impl.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/Horizontal_Image_Grid_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesCategoryPage extends StatelessWidget {
  const ServicesCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: HomeRemotDataSourceImpl(api: API(dio: Dio())))
        ..getService(),
      child: Scaffold(
        backgroundColor: ColorsFaces.colorThird,
        appBar: CustomAppBarWidget(title: "Home"),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              RowSearchFilterWidget(),
              BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                if (state.isLoadingService) {
                  return CircularProgressIndicator();
                }
                if (state.errorService != null) {
                  return Center(child: Text(state.errorService!.message));
                }
                if (state.serviceList == null || state.serviceList!.isEmpty) {
                  return const Center(child: Text("No Services Available"));
                } else {
                  return HorizontalImageGridWidget(
                    heightForm: 667.364013671875,
                    widthForm: 379.15625,
                    heightItem: 121.47280883789062,
                    widthItem: 183.578125,
                    numItem: 2,
                    is6Item: true,
                    llistServices: state.serviceList!,
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
