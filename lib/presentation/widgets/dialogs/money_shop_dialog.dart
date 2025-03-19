import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MoneyShopDialog extends StatelessWidget {
  const MoneyShopDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          children: [
            SizedBox(height: 9.h),
            const SecondaryAppBar(canTapPlus: false),
            SizedBox(height: 123.h),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 28.5.w),
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Image.asset(
                    'assets/png/cross.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            Container(
              width: 333.w,
              height: 285.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/frames/frame5.png'),
                ),
              ),
              padding: EdgeInsets.only(
                top: 36.h,
                bottom: 53.h,
                left: 24.w,
                right: 24.w,
              ),
              child: Column(
                children: [
                  Text("Coins Shop", style: AppTextStyles.mz30_800),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      3,
                      (index) => Column(
                        children: [
                          SizedBox(
                            width: 85.w,
                            height: 97.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  width: 85.w,
                                  height: 85.h,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/png/big_chip.png'),
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
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/png/frames/frame6.png',
                                        width: 79.w,
                                        height: 21.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2.h),
                                        child: Text(
                                          "+ 5 000 points",
                                          style: AppTextStyles.mz10_700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/png/rects/rect1.png',
                                width: 73.w,
                                height: 30.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.h),
                                child: Text(
                                  '0.99\$',
                                  style: AppTextStyles.mz17_800.copyWith(
                                    shadows: [],
                                    letterSpacing: -0.23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
