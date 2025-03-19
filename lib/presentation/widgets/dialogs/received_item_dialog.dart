import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class ReceivedItemDialog extends StatelessWidget {
  const ReceivedItemDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 390.w,
          height: 844.h,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 8.h),
                const CustomAppBar(),
                SizedBox(height: 157.h),
                SizedBox(
                  width: 332.w,
                  height: 308.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 18.h,
                        child: Image.asset(
                          'assets/png/frames/frame3.png',
                          width: 332.w,
                          height: 247.h,
                        ),
                      ),
                      Positioned(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/png/rects/rect2.png',
                              width: 159.w,
                              height: 64.h,
                            ),
                            Text("RECEIVED", style: AppTextStyles.mz24_800),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 90.h,
                        child: Transform.scale(
                          scale: 1.2,
                          child: Image.asset(
                            'assets/png/myst_cards.png',
                            width: 159.w,
                            height: 157.h,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 158.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/png/frames/frame2.png',
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 16.r,
                                    color: AppTheme.green,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/png/frames/frame2.png',
                                width: 158.w,
                                height: 35.h,
                              ),
                            ),
                            Text(
                              "Mysterious deck of Cards",
                              style: AppTextStyles.mz13_600,
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
      ),
    );
  }
}
