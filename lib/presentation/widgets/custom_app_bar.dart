import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.appBar,
    this.canShowBackpack = true,
    this.canAdd = true,
    this.canGoBack = true,
  });

  final bool canShowBackpack;
  final Widget? appBar;
  final bool canAdd;
  final bool canGoBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: canGoBack ? (context.canPop() ? context.pop : null) : null,
            child: Image.asset(
              'assets/png/buttons/home.png',
              width: 45.w,
              height: 45.h,
            ),
          ),
          MoneyWidget(appBar: appBar, canTapPlus: canAdd),
          GestureDetector(
            onTap: () {
              if (!canShowBackpack) return;
              showBackpack(context);
            },
            child: Image.asset(
              'assets/png/buttons/case.png',
              width: 45.w,
              height: 45.h,
            ),
          ),
        ],
      ),
    );
  }

  void showBackpack(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return const BackpackDialog();
      },
    );
  }
}
