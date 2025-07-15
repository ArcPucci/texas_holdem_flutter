import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class PotBox extends StatelessWidget {
  const PotBox({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.active = true,
  });

  final String text;
  final double? width;
  final double? height;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 65.w,
      height: height ?? 15.h,
      decoration: BoxDecoration(
        color: Colors.black,
        border: GradientBoxBorder(
          width: 2.sp,
          gradient: AppTheme.borderGradient,
        ),
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          if (active)
            BoxShadow(
              blurRadius: 12.r,
              color: AppTheme.green,
            ),
        ],
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: Text(text, style: AppTextStyles.mz10_600),
      ),
    );
  }
}
