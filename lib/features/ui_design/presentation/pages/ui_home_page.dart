import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../widget/background_image.dart';
import '../widget/base_container.dart';
import '../widget/categories_widget.dart';
import '../widget/custom_nav_bar.dart';
import '../widget/grid_view_item_widget.dart';
import '../widget/header_widget.dart';
import '../widget/small_container_widget.dart';

class UiHomePage extends StatefulWidget {
  const UiHomePage({super.key});

  @override
  State<UiHomePage> createState() => _UiHomePageState();
}

class _UiHomePageState extends State<UiHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomNavigationBar: CustomNavBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets().backGround),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  HeaderWidget(),
                  SizedBox(height: 24.h),
                  BaseContainer(),
                  SizedBox(height: 10.h),
                  CategoriesWidget(),
                  SizedBox(height: 23.h),

                  Transform.translate(
                    offset: Offset(0, 0.h),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .7 / 1,
                      ),
                      itemBuilder: (context, index) => GridViewItemWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
* Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 67.h),
        child: Stack(
          children: [
            BackgroundImage(),
            HeaderWidget(),
            BaseContainer(),
            Positioned(
              top: 266.h,
              child: SmallContainerWidget(
                child: CustomTextWidget(
                  text: "All",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: AppColors.white,
                ),
              ),
            ),
            Positioned(
              top: 256.h,
              left: 80.w,
              child: SmallContainerWidget(
                child: SvgPicture.asset(AppAssets().batteryIcon),
              ),
            ),
            Positioned(
              top: 246.h,
              left: 150.w,
              child: SmallContainerWidget(
                child: SvgPicture.asset(AppAssets().roadIcon),
              ),
            ),
            Positioned(
              top: 236.h,
              left: 220.w,
              child: SmallContainerWidget(
                child: SvgPicture.asset(AppAssets().unionIcon),
              ),
            ),
            Positioned(
              top: 226.h,
              left: 290.w,
              child: SmallContainerWidget(
                child: SvgPicture.asset(AppAssets().helmetIcon),
              ),
            ),
            Positioned(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .7 / 1,
                ),
                itemBuilder: (context, index) =>
                    Expanded(child: GridViewItemWidget()),
              ),
            ),
          ],
        ),
      ),
* */
