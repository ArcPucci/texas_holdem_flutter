import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets.dart';

class StoryAppBar extends StatelessWidget {
  const StoryAppBar({
    super.key,
    this.hasCase = true,
    this.appBar,
    this.onTapHome,
  });

  final bool hasCase;
  final Widget? appBar;
  final VoidCallback? onTapHome;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTapHome ?? (context.canPop() ? context.pop : null),
            child: Image.asset(
              'assets/png/buttons/home.png',
              width: 45.w,
              height: 45.h,
            ),
          ),
          MoneyWidget(appBar: appBar),
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
