import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class SecondaryAppBar extends StatelessWidget {
  const SecondaryAppBar({super.key, this.canTapPlus = true});

  final bool canTapPlus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 51.h,
      padding: EdgeInsets.only(left: 35.w, right: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/png/buttons/present.png',
            width: 45.w,
            height: 45.h,
          ),
          MoneyWidget(canTapPlus: canTapPlus),
        ],
      ),
    );
  }
}
