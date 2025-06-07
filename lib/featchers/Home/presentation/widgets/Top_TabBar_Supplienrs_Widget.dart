// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:app2/core/Error/Failure.dart';
import 'package:app2/core/Widgets/Row_Search_Filter_widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/data/model/nearest_model.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/manager/home_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/Cosmetic_Item_Card_nearest_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopTabBarSupplienrsWidget extends StatefulWidget {
  final bool isRowSearchTop;

  const TopTabBarSupplienrsWidget({
    super.key,
    this.isRowSearchTop = false,
  });

  @override
  _TopTabBarSupplienrsWidgetState createState() =>
      _TopTabBarSupplienrsWidgetState();
}

class _TopTabBarSupplienrsWidgetState extends State<TopTabBarSupplienrsWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    final cubit = context.read<HomeCubit>();
    if (_selectedIndex == 0) {
      cubit.getnearSuppliersfetchAll();
    } else if (_selectedIndex == 1) {
      cubit.getnearSuppliersfetchSalon();
    } else {
      cubit.getnearSuppliersfetchFreelance();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isRowSearchTop)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: RowSearchFilterWidget(),
          ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: const Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabButton("All", 0),
              tabButton("Salon", 1),
              tabButton("Providers", 2),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              if (!widget.isRowSearchTop) const RowSearchFilterWidget(),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    late final bool isLoading;
                    late final Failure? error;
                    late final List<NearestModel>? dataList;

                    if (_selectedIndex == 0) {
                      isLoading = state.isLoadingnearSuppliersfetchAll;
                      error = state.errornearSuppliersfetchAll;
                      dataList = state.nearSuppliersfetchAllList;
                    } else if (_selectedIndex == 1) {
                      isLoading = state.isLoadingnearSuppliersfetchSalon;
                      error = state.errornearSuppliersfetchSalon;
                      dataList = state.nearSuppliersfetchSalonList;
                    } else {
                      isLoading = state.isLoadingnearSuppliersfetchFreelance;
                      error = state.errornearSuppliersfetchFreelance;
                      dataList = state.nearSuppliersfetchFreelanceList;
                    }

                    if (isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (error != null) {
                      return Center(child: Text(error.message));
                    } else if (dataList == null || dataList.isEmpty) {
                      return const Center(child: Text("No Data"));
                    }

                    return GridView.builder(
                      padding: const EdgeInsets.all(10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ServicesDetailsPage(
                            //       model: dataList[index],
                            //     //!  مشكلة استخدامبع nerst ت الاقرب بدل تبع الخدمات
                            //     ),
                            //   ),
                            // );
                          },
                          child: CosmeticItemNearestCardWidget(
                            item: DummyData.cosmeticItemsListDUMMY[index %
                                DummyData.cosmeticItemsListDUMMY.length],
                            model: dataList![index],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabButton(String label, int index) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        _fetchData(); // 🔁 Fetch data when tab changes
      },
      child: Container(
        width: 120,
        height: 42,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xffA64D79), Color(0xffE195AB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isSelected ? null : const Color(0xffEFEFFB),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label,
          style: TextStyle(
            color:
                isSelected ? const Color(0xffFFFFFF) : const Color(0xff57597E),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
