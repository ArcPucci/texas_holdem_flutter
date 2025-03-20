import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class DirectButton extends StatelessWidget {
  const DirectButton({
    super.key,
    this.onTap,
    required this.text,
    this.left = true,
    this.hasShadow = false,
  });

  final VoidCallback? onTap;
  final String text;
  final bool left;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 237.w,
        height: 72.h,
        decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: AppTheme.borderGradient,
            width: 6.sp,
          ),
          borderRadius: BorderRadius.circular(29),
          color: hasShadow ? Colors.black : Colors.black.withOpacity(0.8),
          boxShadow: [
            if (hasShadow) BoxShadow(blurRadius: 21.r, color: AppTheme.green),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (left)
              Transform.rotate(
                angle: pi,
                child: Image.asset(
                  'assets/png/arrow_right.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            Text(text, style: AppTextStyles.mz30_800),
            if (!left)
              Image.asset(
                'assets/png/arrow_right.png',
                width: 24.w,
                height: 24.h,
              ),
          ],
        ),
      ),
    );
  }
}
