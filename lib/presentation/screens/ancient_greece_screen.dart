import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class AncientGreeceScreen extends StatefulWidget {
  const AncientGreeceScreen({super.key});

  @override
  State<AncientGreeceScreen> createState() => _AncientGreeceScreenState();
}

class _AncientGreeceScreenState extends State<AncientGreeceScreen> {
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
    ];

    Provider.of<StoryProvider>(context, listen: false).init(_pages.length, 13);
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
                  'assets/png/ancient_greece_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    if (value.page == 14) _provider.addCard(3);
                    if (value.page == 15) _provider.addCard(2);
                    value.next();
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: SafeArea(
                      bottom: false,
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
              "Alex regains consciousness on a stone tier, surrounded by a roaring crowd. Below, in the Colosseum arena, gladiators battle wild beasts. Next to Alex sits a man in a toga, engrossed in the spectacle.",
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
                          "Did you see that lion tear the Gaul apart? Bet ten sesterces on that!\nHa!",
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_man2.png',
                      width: 299.w,
                      height: 302.h,
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

  Widget _build3() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        CustomTextBox(
          text:
              "Alex struggles to comprehend his surroundings. He’s now dressed in a simple tunic and sandals. In his pocket is the deck, with the Colosseum card among the others.",
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
                    name: 'Alex',
                    text: 'Excuse me, where am I?\n\n',
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex2.png',
                      width: 296.w,
                      height: 302.h,
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 81.h),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SizedBox(
              width: 346.w,
              height: 442.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const MessageBox(
                    name: 'Man',
                    text:
                        'In the Colosseum, of course! Where else? You’re new here, huh? First time at the games?',
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_man2.png',
                      width: 296.w,
                      height: 302.h,
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
                    name: 'Alex',
                    text: 'You could say that...\n\n',
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex2.png',
                      width: 296.w,
                      height: 302.h,
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

  Widget _build7() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 58.h),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SizedBox(
              width: 346.w,
              height: 464.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const MessageBox(
                    name: 'Man',
                    text:
                        'Then you’re in luck! Today’s special stakes - our emperor is hosting a tournament. The prize is unimaginable wealth!',
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_man2.png',
                      width: 299.w,
                      height: 302.h,
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

  Widget _build8() {
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
                    name: 'Alex',
                    text: 'A tournament? What kind?\n\n',
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex2.png',
                      width: 296.w,
                      height: 302.h,
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
          SizedBox(height: 42.h),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SizedBox(
              width: 346.w,
              height: 481.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const MessageBox(
                    name: 'Man',
                    text:
                        'Poker, naturally! The emperor’s obsessed with the game. Rumor has it he learned it from some wandering magician. Care to try your luck?',
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_man2.png',
                      width: 299.w,
                      height: 302.h,
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

  Widget _build10() {
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
                    name: 'Alex',
                    text: 'Poker? Here?\n\n',
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex2.png',
                      width: 296.w,
                      height: 302.h,
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

  Widget _build11() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 42.h),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SizedBox(
              width: 346.w,
              height: 481.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const MessageBox(
                    name: 'Man',
                    text:
                        'A game’s a game, no matter where you are. But here, the stakes are higher. Lose, and you could gamble away your freedom',
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_man2.png',
                      width: 299.w,
                      height: 302.h,
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

  Widget _build12() {
    return Column(
      children: [
        SizedBox(height: 245.h),
        CustomTextBox(
            text:
                "A herald announces the emperor's tournament. The grand prize: gold and the freedom of any slave chosen by the winner. Alex spots a frightened young girl among the slaves awaiting their fate and decides to enter."),
      ],
    );
  }

  Widget _build13() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/png/greece_girl.png',
            height: 630.h,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }

  Widget _build14() {
    return Column(
      children: [
        SizedBox(height: 178.h),
        SizedBox(
          width: 335.w,
          height: 253.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 36.h,
                child: Container(
                  width: 335.w,
                  height: 168.h,
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
                    "Win the emperor’s poker tournament. The prize: gold and the freedom of a slave. Opponents include noble Romans, legionnaires, and even the emperor himself.",
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
                child: Text("Quest #2", style: AppTextStyles.mz17_800),
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

  Widget _build15() {
    return Column(
      children: [
        SizedBox(height: 216.h),
        const CustomTextBox(
          text:
              "After winning, Alex frees the girl, who thanks him and gives him a small ankh-shaped amulet. Alex notices another card in his deck has vanished, replaced by one depicting a medieval castle... ",
        ),
      ],
    );
  }

  Widget _build16() {
    return Column(
      children: [
        SizedBox(height: 157.h),
        ReceivedCard(mysticCard: mysticCards[3]),
      ],
    );
  }

  Widget _build17() {
    return Column(
      children: [
        SizedBox(height: 157.h),
        ReceivedCard(mysticCard: mysticCards[2]),
      ],
    );
  }
}
