import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MoneyWidget extends StatelessWidget {
  const MoneyWidget({super.key, this.canTapPlus = true, this.appBar});

  final bool canTapPlus;
  final Widget? appBar;

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalDataProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return SizedBox(
          width: 125.w,
          height: 51.h,
          child: Stack(
            children: [
              Positioned(
                left: 17.w,
                bottom: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/png/rects/rect1.png',
                      width: 101.w,
                      height: 41.h,
                      fit: BoxFit.fill,
                    ),
                    Text("${value.money}", style: AppTextStyles.mz17_800),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/png/chip.png',
                  width: 39.w,
                  height: 39.h,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 11.h,
                child: GestureDetector(
                  onTap: () {
                    if (!canTapPlus) return;
                    showMoneyShopDialog(context);
                  },
                  child: Image.asset(
                    'assets/png/buttons/add.png',
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showMoneyShopDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext dialogContext) {
        return MoneyShopDialog(appBar: appBar);
      },
    );
  }
}
