import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: fontSize?.sp ?? 17.sp,
        color: color ?? AppColors.black,
        fontWeight: fontWeight ?? FontWeight.w700,
      ),
    );
  }
}