import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.asset,
    this.onTap,
    required this.title,
  });

  final String asset;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 357.w,
        height: 172.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.bottomLeft,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/png/rects/rect2.png',
              width: 133.w,
              height: 43.h,
              fit: BoxFit.fill,
            ),
            Text(title, style: AppTextStyles.mz20_800),
          ],
        ),
      ),
    );
  }
}
