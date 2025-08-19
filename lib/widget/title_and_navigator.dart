import 'package:flutter/material.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_text_style.dart';

class TitleAndNavigator extends StatelessWidget {
  const TitleAndNavigator({
    super.key,
    required this.title,
    required this.press,
    this.isSeeAll = true,
    this.textColors = textColor,
    this.seeAllColors = blueColor,
    this.fontSize,
  });

  final String title;
  final VoidCallback press;
  final bool isSeeAll;
  final Color textColors;
  final Color seeAllColors;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            color: textColors,
            fontSize: fontSize ?? 22.0,
            fontFamily: bold700,
            fontWeight: FontWeight.w600,
          ),
          isSeeAll
              ? GestureDetector(
                  onTap: press,
                  child: CustomText(
                    text: 'See All',
                    color: seeAllColors,
                    fontFamily: regular400,
                  ),
                )
              : const SizedBox(),
          //Utils.horizontalSpace(6),
          //const Icon(Icons.arrow_forward, color: primaryColor),
        ],
      ),
    );
  }
}
