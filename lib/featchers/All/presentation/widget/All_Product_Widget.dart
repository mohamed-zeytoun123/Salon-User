// ignore_for_file: file_names
import 'package:app2/core/Widgets/Row_Search_Filter_widget.dart';
import 'package:app2/featchers/Home/data/model/Product_model_DUMMY.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/widgets/Product_Card_widget.dart';
import 'package:flutter/material.dart';

class AllProductWidget extends StatefulWidget {
  const AllProductWidget({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AllProductWidgetState createState() => _AllProductWidgetState();
}

class _AllProductWidgetState extends State<AllProductWidget> {
  int _selectedIndex = 0;

  List<ProductModelDUMMY> getFilteredList() {
    if (_selectedIndex == 0) {
      return DummyData.productsDUMMY
          .where((item) => item.discountedPrice == 149)
          .toList();
    } else if (_selectedIndex == 1) {
      return DummyData.productsDUMMY;
    } else {
      return DummyData.productsDUMMY
          .where((item) => item.discountedPrice == 180)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: RowSearchFilterWidget(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: const Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabButton("Makeup", 0),
              tabButton("Skincare", 1),
              tabButton("Accessories", 2),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final filteredList = getFilteredList();
                return ProductCardWidget(
                    isReadyToPurchase: true, product: filteredList[index]);
              },
              itemCount: getFilteredList().length,
            ),
          ),
        ),
      ],
    );
  }

  Widget tabButton(String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
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
