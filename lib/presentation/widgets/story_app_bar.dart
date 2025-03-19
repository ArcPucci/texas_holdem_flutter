import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets.dart';

class StoryAppBar extends StatelessWidget {
  const StoryAppBar({super.key, this.hasCase = true});

  final bool hasCase;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/png/buttons/home.png',
            width: 45.w,
            height: 45.h,
          ),
          const MoneyWidget(),
          hasCase
              ? Image.asset(
                  'assets/png/buttons/case.png',
                  width: 45.w,
                  height: 45.h,
                )
              : SizedBox(width: 45.w),
        ],
      ),
    );
  }
}
