import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class FinalRoomScreen extends StatefulWidget {
  const FinalRoomScreen({super.key});

  @override
  State<FinalRoomScreen> createState() => _FinalRoomScreenState();
}

class _FinalRoomScreenState extends State<FinalRoomScreen> {
  late final List<Widget> _pages;

  int _page = 0;

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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/main_room.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 319.h,
            right: 0,
            child: const SafeArea(child: AnimatedCat()),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: _next,
              child: Material(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 8.h),
                      const CustomAppBar(
                        canGoBack: false,
                        appBar: CustomAppBar(
                          canShowBackpack: false,
                          canAdd: false,
                        ),
                      ),
                      _pages[_page],
                    ],
                  ),
                ),
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
        SizedBox(height: 218.h),
        const CustomTextBox(
          text:
              "But something feels off. Checking the calendar, he sees it’s the same day he first played with the deck. Yet he remembers everything. The cards he earned in other eras are gone, leaving only the original set. ",
        ),
      ],
    );
  }

  Widget _build2() {
    return Column(
      children: [
        SizedBox(height: 218.h),
        const CustomTextBox(
          text:
              "A knock at the door interrupts his thoughts. Standing there is the enigmatic mentor, smiling. ",
        ),
      ],
    );
  }

  Widget _build3() {
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
                  name: "Mentor",
                  text: "I see you’re back. How was the\njourney?\n",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/mentor.png',
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

  Widget _build4() {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 78.h),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: SizedBox(
              width: 335.w,
              height: 442.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const MessageBox(
                    name: "Alex",
                    text: "What’s happening? Why am I back\non the same day?\n",
                    left: false,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/png/avatars/avatar_alex.png',
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

  Widget _build5() {
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
                  name: "Mentor",
                  text:
                      "The deck let you see history firsthand, but that was only the first lesson. The real journey begins now.",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/mentor.png',
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

  Widget _build6() {
    return Column(
      children: [
        SizedBox(height: 218.h),
        const CustomTextBox(text: "The mentor hands Alex a new card."),
      ],
    );
  }

  Widget _build7() {
    return Column(
      children: [
        SizedBox(height: 157.h),
        ReceivedCard(mysticCard: mysticCards.last),
      ],
    );
  }

  Widget _build8() {
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
                  name: "Mentor",
                  text:
                      "This card is the key to the next level. But be warned—the stakes are much higher this time.",
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/png/avatars/mentor.png',
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

  Widget _build9() {
    return Column(
      children: [
        SizedBox(height: 275.h),
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/png/rects/rect2.png',
                width: 186.w,
                height: 75.h,
              ),
              Text("The End", style: AppTextStyles.mz40_800),
            ],
          ),
        ),
      ],
    );
  }

  void _next() {
    if (_pages.length - 1 == _page) {
      Provider.of<LocalDataProvider>(context, listen: false)
          .saveFinalRoomState();
      return;
    }

    if (_page == 5) {
      Provider.of<LocalDataProvider>(context, listen: false).addCard(5);
    }

    _page++;
    setState(() {});
  }
}
