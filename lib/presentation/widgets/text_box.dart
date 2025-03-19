import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.black.withOpacity(0.8),
        border: GradientBoxBorder(
          width: 6.sp,
          gradient: AppTheme.borderGradient,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
      child: Text(
        text,
        style: AppTextStyles.mz17_400.copyWith(letterSpacing: -0.43),
      ),
    );
  }
}
