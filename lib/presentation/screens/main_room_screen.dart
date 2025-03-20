import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MainRoomScreen extends StatefulWidget {
  const MainRoomScreen({super.key});

  @override
  State<MainRoomScreen> createState() => _MainRoomScreenState();
}

class _MainRoomScreenState extends State<MainRoomScreen> {
  bool _showText = true;

  @override
  void initState() {
    super.initState();
    _showText =
        !Provider.of<LocalDataProvider>(context, listen: false).mainRoomState;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalDataProvider>(
      builder: (BuildContext context, value, Widget? child) {
        final firstText = !value.receivedCards.contains(0);
        return Material(
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: () => onTap(firstText, value.mainRoomState),
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
                    onTap: () => onTap(firstText, value.mainRoomState),
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
                child: const Center(
                  child: SafeArea(
                    child: CustomAppBar(
                      appBar: CustomAppBar(
                        canAdd: false,
                        canShowBackpack: false,
                      ),
                    ),
                  ),
                ),
              ),
              if (_showText)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 126.h,
                  child: Center(
                    child: SafeArea(
                      child: GestureDetector(
                        onTap: () => onTap(firstText, value.mainRoomState),
                        child: Container(
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            border: GradientBoxBorder(
                              width: 6.sp,
                              gradient: AppTheme.borderGradient,
                            ),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 28.h,
                          ),
                          child: Text(
                            firstText
                                ? "Alex, a young programmer passionate about history, discovers a peculiar deck of cards on an online auction. The listing description is sparse, and the seller remains anonymous. Intrigued, Alex purchases the deck."
                                : "Upon its arrival, he notices the cards are extraordinarily old, made of an unusual material, with a mysterious symbol on the back. Deciding to play solitaire, Alex begins laying out the cards. Suddenly, the room is engulfed in a blinding light, and Alex loses consciousness.",
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
      },
    );
  }

  Future<void> showReceivedDialog() async {
    await showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return ReceivedItemDialog(mysticCard: mysticCards[0]);
      },
    );
  }

  void onTap(bool firstText, bool completed) async {
    if (completed) {
      context.go('/modes');
      return;
    }
    if (firstText) {
      _showText = false;
      setState(() {});

      await showReceivedDialog();
      Provider.of<LocalDataProvider>(context, listen: false).addCard(0);

      _showText = true;
      setState(() {});
    } else {
      Provider.of<LocalDataProvider>(context, listen: false)
          .saveMainRoomState();
      _showText = false;
    }
  }
}
