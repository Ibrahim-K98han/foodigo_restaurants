import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widget/custom_image.dart';
import '../../../widget/custom_text_style.dart';
import 'components/recent_order.dart';
import 'components/feature_food.dart';
import 'components/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedValue = 'Last 30 days';

  final List<String> items = ['Last 30 days', '1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 40,
            offset: Offset(0, 2),
            spreadRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          const HomeHeader(),
          Utils.verticalSpace(45.0),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: Utils.symmetric(v: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         const CustomText(
                          text: "Order Status",
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: headingTextColor,
                        ),
                        DropdownButton<String>(
                          underline: const SizedBox.shrink(),
                          value: selectedValue,
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          elevation: 0,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: CustomText(
                                text: value,
                                color: Colors.black,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    runSpacing: Utils.vSize(10.0),
                    spacing: Utils.vSize(8.0),
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      _buildSingleCard(
                          KImages.totalOrder, 12.toString(), 'Total Order'),
                      _buildSingleCard(
                          KImages.activeOrder, 125.toString(), 'Active Order'),
                      _buildSingleCard(
                          KImages.returnOrder, 65.toString(), 'Return'),
                      _buildSingleCard(
                          KImages.complete, 458785.toString(), 'Complete'),
                    ],
                  ),
                  Utils.verticalSpace(20.0),
                  const MyFood(),
                  Utils.verticalSpace(20.0),
                  const RecentOrder(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget _buildSingleCard(String icon, String count, String title) {
    return Container(
      padding: Utils.symmetric(v: 10.0, h: 8.0),
      height: Utils.vSize(80.0),
      width: Utils.hSize(162.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: borderColor),
        borderRadius: Utils.borderRadius(r: 6.0.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.05),
            blurRadius: 60,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: title,
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: blackColor,
              ),
              CustomText(
                text: count.padLeft(2, '0'),
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
            ],
          ),
          Container(
            height: Utils.vSize(45.0),
            width: Utils.vSize(45.0),
            margin: Utils.only(left: 8.0, right: 6.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: CustomImage(
              path: icon,
              height: 40.0,
              width: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
