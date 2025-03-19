import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    super.key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.style,
  });

  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/png/rects/rect3.png',
            width: width ?? 111.w,
            height: height ?? 70.h,
          ),
          Text(
            text,
            style: style ?? AppTextStyles.mz20_600,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
