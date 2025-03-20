import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class KnightsArmorScreen extends StatefulWidget {
  const KnightsArmorScreen({super.key});

  @override
  State<KnightsArmorScreen> createState() => _KnightsArmorScreenState();
}

class _KnightsArmorScreenState extends State<KnightsArmorScreen> {
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
      _build21(),
      _build22(),
      _build23(),
      _build24(),
    ];

    Provider.of<StoryProvider>(context, listen: false).init(_pages.length, 20);
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
                  'assets/png/knights_armor_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    if (value.page == 17) _provider.addCard(4);
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
        SizedBox(height: 245.h),
        const CustomTextBox(
            text:
                'Alex wakes on a muddy street in a medieval town. Around him are wooden houses, merchants, beggars, and stray dogs. He’s now wearing a coarse wool tunic, with the deck and amulet in his pocket.')
      ],
    );
  }

  Widget _build2() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(text: 'A ragged man grabs Alex’s arm.'),
      ],
    );
  }

  Widget _build3() {
    return SizedBox(
      width: 390.w,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        SizedBox(height: 78.h),
        Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Man",
                    text:
                        'Hey, sir! Care to test your luck? I’ve got a fun little game...\n',
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man3.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _build4() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
          text: "Alex tries to pull away, but the man’s grip is firm.",
        ),
      ],
    );
  }

  Widget _build5() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 81.h),
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
                    text: "Let me go! I’m not interested in\ngames.\n",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex3.png',
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

  Widget _build6() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageBox(
                    name: "Man",
                    text:
                        "Don’t be afraid! It’s a simple, thrilling game. Cards, dice... take your pick!",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man3.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build7() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
          text: "The man nervously glances around. Alex decides to humor him.",
        ),
      ],
    );
  }

  Widget _build8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 81.h),
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
                  text: "Cards. Show me what you’ve got.\n",
                  left: false,
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_alex3.png',
                    width: 296.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _build9() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
          text:
              "The man pulls out a battered deck and lays a few cards on a barrel. Alex recognizes a primitive version of poker.",
        ),
      ],
    );
  }

  Widget _build10() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Man",
                  text: "We’ll play for small stakes. Got any\ncoins?\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man3.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build11() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
          text:
              "Alex checks his pockets—empty except for the deck and amulet. He shows the amulet to the man.",
        ),
      ],
    );
  }

  Widget _build12() {
    return SizedBox(
      width: 390.w,
      child: Column(
        children: [
          SizedBox(height: 81.h),
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
                    text: "This is all I have. Will it do?\n\n",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex3.png',
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

  Widget _build13() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(text: "The man eyes the amulet greedily."),
      ],
    );
  }

  Widget _build14() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Man",
                  text: "Huh... I suppose. What is it, anyway?\n\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man3.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build15() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
            text:
                "A tall man in travel attire emerges from the corner and places a hand on the ragged man’s shoulder."),
      ],
    );
  }

  Widget _build16() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Tall Man",
                  text: "Leave him alone, Jean. He’s my\nguest.\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_tall_man.png',
                    width: 299.w,
                    height: 302.h,
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
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Man",
                  text: "Leave him alone, Jean. He’s my\nguest.\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_man3.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build18() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 78.h),
          SizedBox(
            width: 346.w,
            height: 445.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Tall Man",
                  text: "No ‘buts.’ Be gone.\n\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_tall_man.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build19() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        const CustomTextBox(
            text:
                "Jean reluctantly lets go of Alex and vanishes into the crowd."),
      ],
    );
  }

  Widget _build20() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 8.h),
          SizedBox(
            width: 346.w,
            height: 538.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const MessageBox(
                  name: "Tall Man",
                  text:
                      "Apologies for the misunderstanding. Jean’s a known swindler. My name is Guillaume, Count of Montfort. I saw your deck—it’s... unique. I’m a collector of rare items. Care for a proper game of poker? On fairer terms, of course.",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/avatar_tall_man.png',
                    width: 299.w,
                    height: 302.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _build21() {
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

  Widget _build22() {
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

  Widget _build23() {
    return Column(
      children: [
        SizedBox(height: 157.h),
        ReceivedCard(mysticCard: mysticCards[4]),
      ],
    );
  }

  Widget _build24() {
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
