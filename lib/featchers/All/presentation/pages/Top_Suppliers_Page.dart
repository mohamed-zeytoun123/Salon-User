// ignore_for_file: file_names

import 'package:app2/core/network/dependency_Injection.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/Cosmetic_Card_widget.dart';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Row_Search_Filter_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/All/presentation/pages/Near_Suppliers_Page.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopSuppliersPage extends StatelessWidget {
  const TopSuppliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: getInstance<HomeRemotDataSource>())
        ..getTopSalons(),
      child: Scaffold(
        appBar: CustomAppBarWidget(title: "Top Suppliers"),
        backgroundColor: ColorsFaces.colorThird,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            spacing: 10,
            children: [
              RowSearchFilterWidget(),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                  if (state.isLoadingTopSalons) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.errorTopSalons != null) {
                    return Center(child: Text(state.errorTopSalons!.message));
                  } else if (state.listTopsSalon == null ||
                      state.listTopsSalon!.isEmpty) {
                    return Center(child: Text("No Data"));
                  } else {
                    return ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: state.listTopsSalon!.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NearSuppliersPage()));
                          },
                          //  context.push(RoutesPath.nearSuppliers);
                          child: CosmeticCardWidget(
                            branch: state.listTopsSalon![index],
                            item: DummyData.cosmeticProvidersListDUMMY[index],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                    );
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
