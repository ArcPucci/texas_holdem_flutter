import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 357.w,
      height: 172.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/png/wild_west.png'),
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
          ),
          Text("Wild West", style: AppTextStyles.mz20_800),
        ],
      ),
    );
  }
}
