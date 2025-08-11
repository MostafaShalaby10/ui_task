import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class SmallContainerWidget extends StatelessWidget {
  const SmallContainerWidget({super.key, required this.child, required this.gradientColors});
final Widget child;
final List<Color> gradientColors ;
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        // width: 50.w,
        // height: 50.h,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: AppColors.white,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:gradientColors,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
    child: child,
    );
  }
}
