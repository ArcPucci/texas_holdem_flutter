import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.name,
    required this.text,
    this.left = true,
  });

  final String name;
  final String text;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: CustomPaint(
            painter: BubblePainter(left: left),
            child: SizedBox(
              width: 335.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
                child: Text(
                  text,
                  style: AppTextStyles.mz17_400.copyWith(letterSpacing: -0.43),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 27.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/png/rects/rect2.png',
                width: 77.w,
                height: 35.h,
                fit: BoxFit.fill,
              ),
              Text(name, style: AppTextStyles.mz20_500),
            ],
          ),
        ),
      ],
    );
  }
}
