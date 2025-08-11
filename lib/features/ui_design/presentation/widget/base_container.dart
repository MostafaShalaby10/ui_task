import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipPath(
        clipper: SlantedClipper(),
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 30.h, left: 16.w, right: 16.w),
          width: double.infinity,
          height: 240.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.primaryColor900, AppColors.primaryColor],
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black100.withOpacity(0.6),
                blurRadius: 60,
                offset: Offset(0, 20),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.black.withOpacity(.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets().bicycleImage),
              CustomTextWidget(
                text: "30% Off",
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: AppColors.white.withOpacity(.6),
              ),
            ],
          ),
        ),
    );
  }
}

class SlantedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height * .8); // Left side starts higher
    path.lineTo(size.width, 0); // Diagonal line to right top
    path.lineTo(0, 0); // Right side full height
    path.lineTo(0, size.height); //// Bottom line
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
