// ignore_for_file: file_names

import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source_impl.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/pages/services_fetch_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalImageGridWidget extends StatelessWidget {
  final List<ServiceModel> llistServices;

  final double heightForm;
  final double widthForm;
  final double heightItem;
  final double widthItem;
  final int numItem;
  final bool? is6Item;

  const HorizontalImageGridWidget({
    super.key,
    this.heightForm = 180,
    this.widthForm = double.infinity,
    this.heightItem = 86,
    this.widthItem = 124,
    this.numItem = 3,
    this.is6Item,
    required this.llistServices,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthForm,
      height: heightForm,
      child: GridView.builder(
        shrinkWrap: true,
        physics: (is6Item ?? false)
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numItem,
          childAspectRatio: widthItem / heightItem,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
        ),
        itemCount: (is6Item ?? false)
            ? llistServices.length
            : (llistServices.length > 6 ? 6 : llistServices.length),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                          value: HomeCubit(
                              remot: HomeRemotDataSourceImpl(
                                  api: API(dio: Dio()))),
                          child: ServicesFetchPage(
                            model: llistServices[index],
                          ))));
            },
            child: Container(
              width: widthItem,
              height: heightItem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      "https://picsum.photos/124/86?random=$index",
                      // items[index].imageUrl,
                      width: widthItem,
                      height: heightItem,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: widthItem,
                        height: 20,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(189, 204, 127, 211),
                              Color(0x2A0A18A1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text(
                        llistServices[index].name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
