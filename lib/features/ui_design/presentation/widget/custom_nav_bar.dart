import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      backgroundColor: AppColors.primaryColor,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Transform.translate(
            offset: Offset(0.w, -10.h),
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.lightGreen, AppColors.blue],
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(AppAssets().bicycleIcon),
            ),
          ),
          icon: SvgPicture.asset(
            AppAssets().bicycleIcon,
            color: AppColors.white,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          activeIcon: Transform.translate(
            offset: Offset(0.w, -10.h),
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.lightGreen, AppColors.blue],
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(AppAssets().mapIcon),
            ),
          ),

          icon: SvgPicture.asset(AppAssets().mapIcon),
          label: "",
        ),
        BottomNavigationBarItem(
          activeIcon: Transform.translate(
            offset: Offset(0.w, -10.h),
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.lightGreen, AppColors.blue],
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(AppAssets().cartIcon),
            ),
          ),

          icon: SvgPicture.asset(AppAssets().cartIcon),
          label: "",
        ),
        BottomNavigationBarItem(
          activeIcon: Transform.translate(
            offset: Offset(0.w, -10.h),
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.lightGreen, AppColors.blue],
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(AppAssets().personIcon),
            ),
          ),

          icon: SvgPicture.asset(AppAssets().personIcon),
          label: "",
        ),
        BottomNavigationBarItem(
          activeIcon: Transform.translate(
            offset: Offset(0.w, -10.h),
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.lightGreen, AppColors.blue],
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(AppAssets().docIcon),
            ),
          ),

          icon: SvgPicture.asset(AppAssets().docIcon),
          label: "",
        ),
      ],
    );
  }
}
