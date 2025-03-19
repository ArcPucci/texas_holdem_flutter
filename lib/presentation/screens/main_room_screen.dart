import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MainRoomScreen extends StatelessWidget {
  const MainRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () => context.go('/modes'),
              child: Image.asset(
                'assets/png/main_room.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 319.h,
            right: 0,
            child: const SafeArea(child: AnimatedCat()),
          ),
          Positioned(
            top: 103.h,
            left: 71.w,
            child: SafeArea(
              child: GestureDetector(
                onTap: () => context.go('/modes'),
                child: Image.asset(
                  'assets/png/alex.png',
                  width: 197.w,
                  height: 639.h,
                ),
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            left: 0,
            right: 0,
            child: const Center(child: SafeArea(child: CustomAppBar())),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 126.h,
            child: Center(
              child: SafeArea(
                child: GestureDetector(
                  onTap: () => showReceivedDialog(context),
                  child: Container(
                    width: 335.w,
                    height: 188.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/png/frames/frame1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      "Alex, a young programmer passionate about history, discovers a peculiar deck of cards on an online auction. The listing description is sparse, and the seller remains anonymous. Intrigued, Alex purchases the deck.",
                      style: AppTextStyles.mz17_400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showReceivedDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return const ReceivedItemDialog();
      },
    );
  }
}
