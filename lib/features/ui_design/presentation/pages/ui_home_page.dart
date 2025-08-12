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
                  SizedBox(height: 23.h),
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
                        crossAxisSpacing: 20.w,
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
