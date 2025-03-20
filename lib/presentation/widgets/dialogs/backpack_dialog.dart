import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/custom_app_bar.dart';

class BackpackDialog extends StatelessWidget {
  const BackpackDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
      child: Material(
        type: MaterialType.transparency,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 8.h),
              const CustomAppBar(canShowBackpack: false, canAdd: false),
              SizedBox(height: 59.h),
              SizedBox(
                width: 348.w,
                height: 334.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: Navigator.of(context).pop,
                        child: Image.asset(
                          'assets/png/cross.png',
                          width: 17.w,
                          height: 17.h,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Consumer<LocalDataProvider>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Container(
                            width: 348.w,
                            height: 297.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.black.withOpacity(0.8),
                              border: GradientBoxBorder(
                                width: 6.sp,
                                gradient: AppTheme.borderGradient,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: GridView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 32.w),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 15.h,
                                crossAxisSpacing: 14.w,
                                mainAxisExtent: 105.h,
                              ),
                              itemBuilder: (context, index) {
                                final card = mysticCards[index];
                                final isReceived =
                                    value.receivedCards.contains(card.id);

                                if (!isReceived) {
                                  return SizedBox(
                                    width: 84.w,
                                    height: 108.h,
                                  );
                                }

                                return SizedBox(
                                  width: 84.w,
                                  height: 108.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Positioned(
                                        top: index == 2 ? -5 : 0,
                                        child: Transform.scale(
                                          scale: index == 2 ? 1 : 1.2,
                                          child: Image.asset(
                                            card.asset,
                                            width: 76.w,
                                            height: 75.h,
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/png/semi_rect.png',
                                            width: 84.w,
                                            height: 53.h,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(
                                            card.name,
                                            style: AppTextStyles.mz9_700,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 278.h,
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/png/rects/rect2.png',
                              width: 94.w,
                              height: 38.h,
                            ),
                            Text("BACKPACK", style: AppTextStyles.mz14_800),
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
      ),
    );
  }
}
