import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class DirectButton extends StatelessWidget {
  const DirectButton({
    super.key,
    this.onTap,
    required this.text,
    this.left = true,
  });

  final VoidCallback? onTap;
  final String text;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 225.w,
        height: 72.h,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/png/frames/frame4.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(36),
          color: Colors.black.withOpacity(0.8),
          boxShadow: [BoxShadow(blurRadius: 21.r, color: AppTheme.green)],
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
