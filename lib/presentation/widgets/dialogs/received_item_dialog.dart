import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/models/models.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class ReceivedItemDialog extends StatelessWidget {
  const ReceivedItemDialog({super.key, required this.mysticCard});

  final MysticCard mysticCard;

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
                const CustomAppBar(canShowBackpack: false, canAdd: false),
                SizedBox(height: 157.h),
                ReceivedCard(mysticCard: mysticCard),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
