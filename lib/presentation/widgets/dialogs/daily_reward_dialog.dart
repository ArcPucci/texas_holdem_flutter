import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class DailyRewardDialog extends StatelessWidget {
  const DailyRewardDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalDataProvider>(
      builder: (BuildContext context, value, Widget? child) {
        final hasReward = value.hasReward;
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Material(
            type: MaterialType.transparency,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 9.h),
                  const SecondaryAppBar(
                    canTapPlus: false,
                    canTapPresent: false,
                  ),
                  SizedBox(height: 123.h),
                  SizedBox(
                    width: 333.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: Navigator.of(context).pop,
                          child: Image.asset(
                            'assets/png/cross.png',
                            width: 17.w,
                            height: 17.h,
                          ),
                        ),
                        SizedBox(height: 19.h),
                        Container(
                          width: 333.w,
                          height: 327.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Colors.black.withOpacity(0.8),
                            border: GradientBoxBorder(
                              width: 6.sp,
                              gradient: AppTheme.borderGradient,
                            ),
                          ),
                          padding: EdgeInsets.only(top: 36.h, bottom: 27.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Daily Reward",
                                style: AppTextStyles.mz30_800,
                              ),
                              SizedBox(
                                width: 390.w,
                                height: 143.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      width: 129.w,
                                      height: 129.h,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/png/big_chip.png',
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 17,
                                            color: AppTheme.secondaryGreen,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 27.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.black.withOpacity(0.8),
                                          border: GradientBoxBorder(
                                            width: 2.sp,
                                            gradient: AppTheme.borderGradient,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.w,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 2.h),
                                          child: Text(
                                            hasReward
                                                ? "+ 1 000 points"
                                                : "Come back tomorow for your reward",
                                            style: AppTextStyles.mz13_500,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                  if (hasReward) value.receiveDailyReward();
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/png/rects/rect2.png',
                                      width: 99.w,
                                      height: 40.h,
                                    ),
                                    Text(
                                      hasReward ? "Get" : "Get you",
                                      style: AppTextStyles.mz25_800,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
