import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class GridViewItemWidget extends StatefulWidget {
  const GridViewItemWidget({super.key});

  @override
  State<GridViewItemWidget> createState() => _GridViewItemWidgetState();
}

class _GridViewItemWidgetState extends State<GridViewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TestShape(),
      child: Container(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: 34.h,
          top: 20.h,
        ),
        width: MediaQuery.of(context).size.width * .5,
        height: 241.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryColor800,
              AppColors.primaryColor700,
            ],
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined , color: AppColors.white,),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  alignment: Alignment.center,
                  AppAssets().bicycle2Image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // SizedBox(height: 18.h),
            CustomTextWidget(
              text: "Road Bike",
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.white.withOpacity(.6),
            ),
            CustomTextWidget(
              text: "PEUGEOT - LR01 ",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
            CustomTextWidget(
              text: "\$ 1,999.99",
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.white.withOpacity(.6),
            ),
          ],
        ),
      ),
    );
  }
}
class TestShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0473005, size.height * 0.1157160);
    path_0.lineTo(size.width * 0.9603250, size.height * 0.0121999);
    path_0.lineTo(size.width * 0.9680577, size.height * 0.8633687);
    path_0.lineTo(size.width * 0.0544267, size.height * 0.9745655);

    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
