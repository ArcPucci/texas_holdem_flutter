import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/models/models.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.player, this.active = false});

  final Player player;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.w,
      height: 102.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Image.asset(
              player.asset,
              width: 78.w,
              height: 78.h,
            ),
          ),
          Positioned(
            top: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/png/rects/rect2.png',
                  width: 50.w,
                  height: 22.h,
                ),
                Text(player.name, style: AppTextStyles.mz13_500),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: PotBox(
              text: "${player.bet}",
              active: active,
              width: 51.w,
            ),
          ),
        ],
      ),
    );
  }
}
