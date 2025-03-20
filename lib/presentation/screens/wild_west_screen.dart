import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class WildWestScreen extends StatefulWidget {
  const WildWestScreen({super.key});

  @override
  State<WildWestScreen> createState() => _WildWestScreenState();
}

class _WildWestScreenState extends State<WildWestScreen> {
  late final List<Widget> _pages;
  late final LocalDataProvider _provider;

  @override
  void initState() {
    super.initState();
    _pages = [
      _build1(),
      _build2(),
      _build3(),
      _build4(),
      _build5(),
      _build6(),
      _build7(),
      _build8(),
      _build9(),
      _build10(),
      _build11(),
      _build12(),
      _build13(),
      _build14(),
      _build15(),
      _build16(),
      _build17(),
      _build18(),
      _build19(),
      _build20(),
    ];

    Provider.of<StoryProvider>(context, listen: false).init(_pages.length, 16);
    _provider = Provider.of(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StoryProvider>(
      builder: (BuildContext context, value, Widget? child) {
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
                child: GestureDetector(
                  onTap: () {
                    if (value.page == 17) _provider.addCard(1);
                    value.next();
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: SafeArea(
                      child: Column(
                        children: [
                          SizedBox(height: 8.h),
                          const StoryAppBar(),
                          _pages[value.page],
                        ],
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

  Widget _build17() {
    return Column(
      children: [
        SizedBox(height: 155.h),
        SizedBox(
          width: 335.w,
          height: 269.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 36.h,
                child: Container(
                  width: 335.w,
                  height: 187.h,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.75),
                    border: GradientBoxBorder(
                      width: 6.sp,
                      gradient: AppTheme.borderGradient,
                    ),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  alignment: Alignment.center,
                  child: Text(
                    "Win a poker game against Jake. The stakes: Bart’s life and Alex’s freedom. Alex’s deck contains several special cards, like one that reveals an opponent’s hand or changes a card’s suit.",
                    style: AppTextStyles.mz17_400,
                  ),
                ),
              ),
              Container(
                width: 192.w,
                height: 45.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: GradientBoxBorder(
                    width: 4.sp,
                    gradient: AppTheme.borderGradient,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(blurRadius: 15, color: AppTheme.green),
                  ],
                ),
                alignment: Alignment.center,
                child: Text("Quest #1", style: AppTextStyles.mz17_800),
              ),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  onTap:
                      Provider.of<StoryProvider>(context, listen: false).next,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/png/rects/rect2.png',
                        width: 159.w,
                        height: 64.h,
                      ),
                      Text("Play", style: AppTextStyles.mz32_800),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _build18() {
    return Column(
      children: [
        SizedBox(height: 216.h),
        const CustomTextBox(
          text:
              "After winning the game, Alex notices one of his cards has disappeared, replaced by a new one depicting the Roman Colosseum.",
        ),
      ],
    );
  }

  Widget _build19() {
    return Column(
      children: [
        SizedBox(height: 157.h),
        ReceivedCard(mysticCard: mysticCards[1]),
      ],
    );
  }

  Widget _build20() {
    return Column(
      children: [
        SizedBox(height: 218.h),
        const CustomTextBox(
          text:
              "Another flash of light engulfs the saloon, and Alex vanishes...",
        ),
      ],
    );
  }
}
