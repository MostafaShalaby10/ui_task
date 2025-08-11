import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_task/features/ui_design/presentation/widget/small_container_widget.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        5,
        (index) =>  Transform.translate(
            offset: Offset((index + 1) * 0.w, (index) * -10.h),
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  print(_selectedIndex);
                });
              },
              child: SmallContainerWidget(
                  gradientColors: _selectedIndex == index
                      ? [AppColors.lightGreen, AppColors.blue]
                      : [AppColors.secondaryColor, AppColors.primaryColor900],
                  child: getCategoriesWidget(index: index)
              ),
            )
          ),
        ),

    );
  }
}

Widget getCategoriesWidget({required int index}) {
  switch (index) {
    case 0:
      return CustomTextWidget(
        text: "All",
        fontWeight: FontWeight.w500,
        fontSize: 13,
        color: AppColors.white,
      );
    case 1:
      return SvgPicture.asset(AppAssets().batteryIcon);
    case 2:
      return SvgPicture.asset(AppAssets().roadIcon);
    case 3:
      return SvgPicture.asset(AppAssets().unionIcon);
    case 4:
      return SvgPicture.asset(AppAssets().helmetIcon);
    default:
      return Container();
      
  }
}

/*
* InkWell(
          onTap: () {
            setState(() {
              _selectedIndex = 0;
              print(_selectedIndex);
            });
          },
          child: Transform.translate(
            offset: Offset(0.w, 10.h),
            child: SmallContainerWidget(
              gradientColors: _selectedIndex == 0
                  ? [AppColors.lightGreen, AppColors.blue]
                  : [AppColors.secondaryColor, AppColors.primaryColor900],
              child: CustomTextWidget(
                text: "All",
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: AppColors.white,
              ),
            ),
          ),
        ),
       InkWell(
         onTap: () {
           setState(() {
             _selectedIndex = 1;
             print(_selectedIndex);

           });
         },
         child:  Transform.translate(
           offset: Offset(20.w, 0.h),
           child: SmallContainerWidget(
             gradientColors: _selectedIndex == 1
                 ? [AppColors.lightGreen, AppColors.blue]
                 : [AppColors.secondaryColor, AppColors.primaryColor900],
             child: SvgPicture.asset(AppAssets().batteryIcon),
           ),
         ),
       ),
       InkWell(
         onTap: () {
           setState(() {
             _selectedIndex = 2;
             print(_selectedIndex);

           });
         },
         child:  Transform.translate(
           offset: Offset(40.w, -10.h),
           child: SmallContainerWidget(
             gradientColors: _selectedIndex == 2
                 ? [AppColors.lightGreen, AppColors.blue]
                 : [AppColors.secondaryColor, AppColors.primaryColor900],
             child: SvgPicture.asset(AppAssets().roadIcon),
           ),
         ),
       ),
       InkWell(
         onTap: () {
           setState(() {
             _selectedIndex = 3;
             print(_selectedIndex);

           });
         },
         child:  Transform.translate(
           offset: Offset(60.w, -20.h),
           child: SmallContainerWidget(
             gradientColors: _selectedIndex == 3
                 ? [AppColors.lightGreen, AppColors.blue]
                 : [AppColors.secondaryColor, AppColors.primaryColor900],
             child: SvgPicture.asset(AppAssets().unionIcon),
           ),
         ),
       ),
        InkWell(
          onTap: () {
            setState(() {
              _selectedIndex = 4;
              print(_selectedIndex);

            });
          },
          child: Transform.translate(
            offset: Offset(80.w, -30.h),
            child: SmallContainerWidget(
              gradientColors: _selectedIndex == 4
                  ? [AppColors.lightGreen, AppColors.blue]
                  : [AppColors.secondaryColor, AppColors.primaryColor900],
              child: SvgPicture.asset(AppAssets().helmetIcon),
            ),
          ),
        )
* */
