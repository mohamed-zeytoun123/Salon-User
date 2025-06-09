// ignore_for_file: file_names
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/select_location_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 611,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saved Location",
                  style: FontsStyle.white32w400Meditative
                      .copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "The location you entered",
                  style:
                      FontsStyle.white13w400.copyWith(color: Color(0xff666666)),
                ),
              ],
            ),
          ),
          SelectableBottomSheetWidget()
        ],
      ),
    );
  }
}

//📌 **الصفحة الأولى** (تحتوي على الأيقونة التي تغير الصفحة)
//   Widget _buildFirstPage() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.add_ic_call_outlined,
//           size: 50,
//           color: Colors.blue,
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               isFirstPage = false; // التبديل إلى الصفحة الثانية
//             });
//           },
//           child: Text("انتقل إلى الصفحة الثانية"),
//         ),
//       ],
//     );
//   }
//  📌 **الصفحة الثانية** (محتوى مختلف)
//   Widget _buildSecondPage() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.check_circle_outline,
//           size: 50,
//           color: Colors.green,
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               isFirstPage = true; // العودة إلى الصفحة الأولى
//             });
//           },
//           child: Text("الرجوع إلى الصفحة الأولى"),
//         ),
//       ],
//     );
//   }
// }
