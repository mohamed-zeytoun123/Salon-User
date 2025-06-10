// ignore_for_file: file_names

import 'package:app2/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/data/model/address_model.dart';
import 'package:app2/featchers/Home/data/model/branch_model.dart';
import 'package:app2/featchers/Home/data/model/category_model.dart';
import 'package:app2/featchers/Home/data/model/city_model.dart';
import 'package:app2/featchers/Home/data/model/provider_model.dart';
import 'package:app2/featchers/Home/data/model/region_model.dart';
import 'package:app2/featchers/Home/data/model/service_model.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/pages/services_details_page.dart';
import 'package:app2/featchers/Home/presentation/widgets/image_slider_widget.dart';
import 'package:app2/featchers/auth/data/models/user_model.dart';
import 'package:easy_localization/easy_localization.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            maxLines: 1,
            "Look at the latest offers and benefit from the application services",
            style: FontsStyle.white14w400
                .copyWith(fontSize: 11.5, color: Color(0xff515151)),
          ).tr(),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServicesDetailsPage(
                              model: ServiceModel(
                            id: 0,
                            isFavourite: false,
                            price: 100,
                            duration: 30,
                            categoryId: 1,
                            type: 1,
                            createdAt: DateTime.now(),
                            deliveryFee: 0,
                            homeServiceFee: 10,
                            newPrice: 80,
                            name: "Default Service",
                            image: "https://via.placeholder.com/150",
                            description: "Default service description.",
                            branch: BranchModel(
                              id: 0,
                              providerId: 0,
                              createdAt: DateTime.now(),
                              managerName: "Default Manager",
                              isOpen: 1,
                              phone: "0000000000",
                              name: "Default Branch",
                              distance: 0.0,
                              productsCount: 0,
                              image: "https://via.placeholder.com/150",
                              coverImage: "https://via.placeholder.com/300x100",
                              gallery: [],
                              address: AddressModel(
                                id: 0,
                                address: "Default Address",
                                lat: 0.0,
                                lng: 0.0,
                                regionId: 0,
                                createdAt: DateTime.now(),
                                region: RegionModel(
                                  id: 0,
                                  cityId: 0,
                                  createdAt: DateTime.now(),
                                  name: "Default Region",
                                  city: CityModel(
                                    id: 0,
                                    createdAt: DateTime.now(),
                                    name: "Default City",
                                  ),
                                ),
                              ),
                              provider: ProviderModel(
                                id: 0,
                                showInHome: 1,
                                type: 1,
                                createdAt: DateTime.now(),
                                subscriptionId: null,
                                order: 0,
                                currencyPerPoint: null,
                                pointValue: null,
                                name: "Default Provider",
                                bio: "Default provider bio",
                                address: "Provider Address",
                                categories: [
                                  CategoryModel(
                                    id: 0,
                                    status: 1,
                                    type: "service",
                                    createdAt: DateTime.now(),
                                    name: "Default Category",
                                    image: "https://via.placeholder.com/100",
                                  )
                                ],
                                supportLoyaltyPoints: 0,
                                user: UserModel(
                                  id: 0,
                                  name: "Default User",
                                  email: "default@example.com",
                                  phone: "0000000000",
                                  gender: "other",
                                  active: 1,
                                  image: "https://via.placeholder.com/100",
                                  type: "provider",
                                  userableId: 0,
                                ),
                              ),
                            ),
                            category: CategoryModel(
                              id: 0,
                              status: 1,
                              type: "service",
                              createdAt: DateTime.now(),
                              name: "Default Category",
                              image: "https://via.placeholder.com/100",
                            ),
                          ))),
                );
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
