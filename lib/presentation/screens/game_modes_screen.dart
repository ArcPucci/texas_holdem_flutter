import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class GameModesScreen extends StatefulWidget {
  const GameModesScreen({super.key});

  @override
  State<GameModesScreen> createState() => _GameModesScreenState();
}

class _GameModesScreenState extends State<GameModesScreen>
    with TickerProviderStateMixin {
  late AnimationController _dividerController;
  late Animation _dividerAnimation;

  bool _right = true;
  bool _animated = false;

  final Point<double> _point1 = Point(194.w, 128.h);
  final Point<double> _point2 = Point(390.w, 298.h);

  @override
  void initState() {
    super.initState();
    _dividerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _dividerAnimation = Tween<double>(begin: 0, end: 96.w).animate(
      CurvedAnimation(parent: _dividerController, curve: Curves.linear),
    );

    _dividerController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) setState(() {});
      },
    );
  }

  @override
  void dispose() {
    _dividerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalDataProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Material(
          color: AppTheme.black,
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    if (!_right) return;
                    _dividerController.reverse();
                    _animated = false;
                    setState(() {});
                  },
                  child: Image.asset(
                    'assets/png/poker_mode.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: _dividerAnimation,
                builder: (BuildContext context, Widget? child) {
                  return Positioned(
                    left: 195.w + (_dividerAnimation.value * (_right ? -1 : 1)),
                    child: GestureDetector(
                      onTap: () {
                        if (_right) return;
                        _dividerController.reverse();
                        _animated = false;
                        setState(() {});
                      },
                      child: Image.asset(
                        'assets/png/story_mode.png',
                        width: 300.w,
                        height: 844.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              AnimatedPositioned(
                top: _animated
                    ? _right
                        ? _point1.y
                        : _point2.y
                    : 298.h,
                left: _animated
                    ? _right
                        ? _point1.x
                        : _point2.x
                    : 231.w,
                duration: const Duration(milliseconds: 300),
                child: Image.asset(
                  'assets/png/old_man.png',
                  width: 249.w,
                  height: 682.h,
                ),
              ),
              if (_dividerController.isCompleted)
                Positioned(
                  left: _right ? null : 0,
                  right: _right ? 0 : null,
                  top: 265.h,
                  child: Container(
                    width: 290.w,
                    height: 209.h,
                    color: Colors.black.withOpacity(0.82),
                    padding: EdgeInsets.symmetric(vertical: 28.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DirectButton(
                          text: _right ? 'Story mode' : 'Poker mode',
                          left: false,
                          onTap: onTapPlay,
                        ),
                        GestureDetector(
                          onTap: onTapPlay,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/png/rects/rect2.png',
                                width: 129.w,
                                height: 52.h,
                              ),
                              Text("Play", style: AppTextStyles.mz25_800),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              AnimatedBuilder(
                animation: _dividerAnimation,
                builder: (BuildContext context, Widget? child) {
                  return Positioned(
                    left: 195.w -
                        7.5.w +
                        (_dividerAnimation.value * (_right ? -1 : 1)),
                    child: Container(
                      width: 15.w,
                      height: 844.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/png/divider.png'),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(5, 2),
                            blurRadius: 16,
                            color: Colors.black.withOpacity(0.79),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                top: 9.h,
                child: const SafeArea(child: SecondaryAppBar()),
              ),
              if (!_animated)
                Positioned(
                  top: 221.w,
                  left: 118.w,
                  child: SafeArea(
                    child: DirectButton(
                      text: 'Story mode',
                      left: false,
                      onTap: () {
                        _right = true;
                        _animated = true;
                        setState(() {});
                        _dividerController.forward();
                      },
                    ),
                  ),
                ),
              if (!_animated)
                Positioned(
                  left: 56.w,
                  bottom: 92.w,
                  child: SafeArea(
                    child: DirectButton(
                      text: 'Poker mode',
                      onTap: () {
                        _right = false;
                        _animated = true;
                        setState(() {});
                        _dividerController.forward();
                      },
                    ),
                  ),
                ),
              if (value.firstInitGameMode)
                Positioned.fill(
                  child: GestureDetector(
                    onTap: value.saveFirstInitGameMode,
                    child: Material(
                      color: Colors.black.withOpacity(0.5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: SafeArea(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 162.h,
                                left: 118.w,
                                child: Text(
                                  "Story mode with an interesting\nplot and quests",
                                  style: AppTextStyles.mz16_600,
                                ),
                              ),
                              Positioned(
                                top: 221.w,
                                left: 118.w,
                                child: const SafeArea(
                                  child: DirectButton(
                                    text: 'Story mode',
                                    hasShadow: true,
                                    left: false
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 181.h,
                                left: 56.w,
                                child: Text(
                                  "Regular Poker game mode in\nTexas Hold'em",
                                  style: AppTextStyles.mz16_600,
                                ),
                              ),
                              Positioned(
                                left: 56.w,
                                bottom: 92.w,
                                child: const SafeArea(
                                  child: DirectButton(
                                    text: 'Poker mode',
                                    hasShadow: true,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 406.h,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Text(
                                    "Select a game mode",
                                    style: AppTextStyles.mz32_700,
                                  ),
                                ),
                              ),
                            ],
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

  void onTapPlay() {
    if (_right) {
      context.go('/modes/stories');
      return;
    }

    context.go('/modes/poker');
  }
}
