import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class WildWestScreen extends StatelessWidget {
  const WildWestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/wild_west_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  const StoryAppBar(),
                  _build16(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _build1() {
    return Column(
      children: [
        SizedBox(height: 217.h),
        const CustomTextBox(
          text:
              "Alex wakes up in a noisy saloon. Cowboys, gamblers, and women in elaborate dresses surround him. Across the table sits a burly man with a thick mustache and a hat, shuffling a deck of cards.",
        ),
      ],
    );
  }

  Widget _build2() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 90.h),
          SizedBox(
            width: 362.w,
            height: 445.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0.15.h,
                  left: 0,
                  child: const MessageBox(
                    name: "Man",
                    text:
                        "Well, newbie, are we continuing, or have you lost your nerve?",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build3() {
    return Column(
      children: [
        SizedBox(height: 217.h),
        const CustomTextBox(
          text:
              "Alex looks around, disoriented. His hands are clean—devoid of the usual keyboard calluses—and his clothes have changed to an old-fashioned shirt and jeans.",
        ),
      ],
    );
  }

  Widget _build4() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 90.h),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: SizedBox(
              width: 335.w,
              height: 442.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const MessageBox(
                    name: "Alex",
                    text: "Excuse me, I... I don’t remember how I got here.",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset(
                        'assets/png/avatars/avatar_alex.png',
                        width: 298.w,
                        height: 301.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _build5() {
    return SizedBox(
      width: 390.w,
      child: Column(
        children: [
          SizedBox(height: 90.h),
          SizedBox(
            width: 362.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                const MessageBox(
                  name: "Man",
                  text:
                      "Forgot how much you lost, huh? Happens. But a debt is a debt. We're playing for your watch",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build6() {
    return Column(
      children: [
        SizedBox(height: 217.h),
        const CustomTextBox(
            text:
                "Alex notices an antique pocket watch on his wrist, something he’s never owned. Instinctively, he checks his pockets and finds the same mysterious deck of cards. As he pulls it out, the man’s expression changes."),
      ],
    );
  }

  Widget _build7() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 87.h),
          SizedBox(
            width: 362.w,
            height: 448.h,
            child: Stack(
              children: [
                const MessageBox(
                  name: "Man",
                  text:
                      "Forgot how much you lost, huh? Happens. But a debt is a debt. We're playing for your watch",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build8() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 92.h),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: SizedBox(
              width: 335.w,
              height: 442.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const MessageBox(
                    name: "Alex",
                    text: "I... I found it.\n\n",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex.png',
                      width: 296.w,
                      height: 301.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _build9() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 70.h),
          SizedBox(
            width: 372.w,
            height: 464.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Man",
                    text:
                        'Found it? Doubtful. That deck chooses its owner. Seems it picked you. But know this - it brings more than just luck; trouble’s part of the deal.',
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build10() {
    return Column(
      children: [
        SizedBox(height: 217.h),
        const CustomTextBox(
            text:
                'At that moment, a gang of bandits bursts into the saloon, led by a tall, gaunt man in a black hat.'),
      ],
    );
  }

  Widget _build11() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 87.h),
          SizedBox(
            width: 362.w,
            height: 448.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Bandit",
                    text: "Bart! Where’s our money?!\n\n",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_brandt.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build12() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 87.h),
          SizedBox(
            width: 362.w,
            height: 448.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Bart",
                    text: "I don’t have your money, Jake! I lost it\nall...\n",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build13() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 87.h),
          SizedBox(
            width: 362.w,
            height: 448.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Bandit",
                    text: "Liar! You’re hiding it! Hand it over, or\nelse...\n",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_brandt.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build14() {
    return Column(
      children: [
        SizedBox(height: 217.h),
        const CustomTextBox(
            text:
                "Jake grabs Bart by the collar. Alex realizes he has to act."),
      ],
    );
  }

  Widget _build15() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 90.h),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: SizedBox(
              width: 335.w,
              height: 442.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const MessageBox(
                    name: 'Alex',
                    text:
                        "Wait! I’ll play against you. If I win, you leave Bart alone. If I lose, you can have everything I have.",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex.png',
                      width: 296.w,
                      height: 301.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _build16() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 90.h),
          SizedBox(
            width: 362.w,
            height: 448.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                const MessageBox(
                  name: 'Bandit',
                  text:
                      "Fine, newbie. But if you’re bluffing, you’ll regret it.\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_brandt.png',
                    width: 296.w,
                    height: 301.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
