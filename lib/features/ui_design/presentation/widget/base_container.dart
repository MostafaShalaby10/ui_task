import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // SvgPicture.asset(AppAssets().backgroundContainer ,),
        Image.asset(AppAssets().ContainerBackgroundPNG, fit: BoxFit.cover),
        Positioned(
          top: 30.h,
          left: 20.w,
          right: 20.w,
          child: Image.asset(
            AppAssets().bicycleImage,
            fit: BoxFit.cover,
            height: 153.h,
          ),
        ),
       Positioned(
         bottom: 24.h,
         left: 16.w,
         child:  CustomTextWidget(
         text: "30% Off",
         fontWeight: FontWeight.w700,
         fontSize: 26,
         color: AppColors.white.withOpacity(.6),
       ),),
      ],
    );
  }
}

