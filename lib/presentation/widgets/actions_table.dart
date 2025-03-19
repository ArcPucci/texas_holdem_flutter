import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class ActionsTable extends StatelessWidget {
  const ActionsTable({
    super.key,
    this.doFold,
    this.doCall,
    this.doRaise,
    this.doAllIn,
    this.multiplyRaise,
    this.increaseRaise,
    this.decreaseRaise,
    required this.call,
    required this.raise,
  });

  final VoidCallback? doFold;
  final VoidCallback? doCall;
  final VoidCallback? doRaise;
  final VoidCallback? doAllIn;
  final void Function(int)? multiplyRaise;
  final VoidCallback? increaseRaise;
  final VoidCallback? decreaseRaise;
  final int call;
  final int raise;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 354.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 59.w,
                height: 127.h,
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    width: 3.sp,
                    gradient: AppTheme.borderGradient,
                  ),
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GameButton(
                      width: 49.w,
                      height: 31.h,
                      text: 'All - in',
                      style: AppTextStyles.mz14_600,
                      onTap: doAllIn,
                    ),
                    GameButton(
                      width: 49.w,
                      height: 31.h,
                      text: '4X',
                      style: AppTextStyles.mz14_600,
                      onTap: () => multiplyRaise?.call(4),
                    ),
                    GameButton(
                      width: 49.w,
                      height: 31.h,
                      text: '3X',
                      style: AppTextStyles.mz14_600,
                      onTap: () => multiplyRaise?.call(3),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 3.w),
              Container(
                width: 48.w,
                height: 127.h,
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    width: 3.sp,
                    gradient: AppTheme.borderGradient,
                  ),
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: increaseRaise,
                      child: Image.asset(
                        'assets/png/buttons/plus.png',
                        width: 37.w,
                        height: 37.h,
                      ),
                    ),
                    Text(
                      "$raise",
                      style: AppTextStyles.mz14_600.copyWith(
                        shadows: [],
                      ),
                    ),
                    GestureDetector(
                      onTap: decreaseRaise,
                      child: Image.asset(
                        'assets/png/buttons/minus.png',
                        width: 37.w,
                        height: 37.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GameButton(text: 'Fold', onTap: doFold),
              GameButton(text: 'Call \n$call', onTap: doCall),
              GameButton(text: 'Raise to\n$raise', onTap: doRaise),
            ],
          ),
        ],
      ),
    );
  }
}
