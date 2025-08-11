import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return             Row(
      children: [
        Expanded(
          child: CustomTextWidget(
            textAlign: TextAlign.start,
            text: "Choose Your Bike",
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontSize: 20,
          ),
        ),

        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.lightGreen, AppColors.blue],
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets().searchIcon),
          ),
        ),
      ],
    )
    ;
  }
}
