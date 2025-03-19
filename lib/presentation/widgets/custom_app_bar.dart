import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/png/buttons/home.png',
            width: 45.w,
            height: 45.h,
          ),
          const MoneyWidget(),
          Image.asset(
            'assets/png/buttons/case.png',
            width: 45.w,
            height: 45.h,
          ),
        ],
      ),
    );
  }
}
