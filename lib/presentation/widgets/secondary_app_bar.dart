import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class SecondaryAppBar extends StatelessWidget {
  const SecondaryAppBar({
    super.key,
    this.canTapPlus = true,
    this.canTapPresent = true,
  });

  final bool canTapPlus;
  final bool canTapPresent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 51.h,
      padding: EdgeInsets.only(left: 35.w, right: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (!canTapPresent) return;
              showDailyRewardDialog(context);
            },
            child: Image.asset(
              'assets/png/buttons/present.png',
              width: 45.w,
              height: 45.h,
            ),
          ),
          MoneyWidget(
            canTapPlus: canTapPlus,
            appBar: const SecondaryAppBar(
              canTapPresent: false,
              canTapPlus: false,
            ),
          ),
        ],
      ),
    );
  }

  void showDailyRewardDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const DailyRewardDialog();
      },
    );
  }
}
