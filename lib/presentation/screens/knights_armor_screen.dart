import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class KnightsArmorScreen extends StatelessWidget {
  const KnightsArmorScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  const StoryAppBar(),
                  _build20(),
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
}
