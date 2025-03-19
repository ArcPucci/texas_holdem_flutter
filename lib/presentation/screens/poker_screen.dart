import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class PokerScreen extends StatelessWidget {
  const PokerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return PokerGameProvider(players: Poker.defaultPlayers)
          ..initializePoker();
      },
      child: Consumer<PokerGameProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Material(
            color: AppTheme.black,
            child: Stack(
              children: [
                Positioned(
                  top: 8.h,
                  left: 0,
                  right: 0,
                  child: const Center(
                    child: SafeArea(child: StoryAppBar(hasCase: false)),
                  ),
                ),
                Positioned(
                  top: 75.h,
                  left: 26.w,
                  child: SafeArea(
                    child: SizedBox(
                      width: 346.w,
                      height: 589.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 51.h,
                            left: 7.w,
                            child: Image.asset(
                              'assets/png/tables/default_table.png',
                              width: 318.w,
                              height: 515.h,
                            ),
                          ),
                          Positioned(
                            top: 232.h,
                            left: 50.w,
                            child: Column(
                              children: [
                                PotBox(text: "Pot: ${value.pot}"),
                                SizedBox(height: 11.h),
                                SizedBox(
                                  width: 235.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      value.deck.length,
                                      (index) {
                                        final card = value.deck[index];

                                        if (!card.opened) {
                                          return Container(
                                            width: 41.w,
                                            height: 62.h,
                                            decoration: BoxDecoration(
                                              color: Colors.black
                                                  .withOpacity(0.14),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                width: 0.88.sp,
                                                color: Colors.black
                                                    .withOpacity(0.62),
                                              ),
                                            ),
                                          );
                                        }

                                        return Container(
                                          width: 41.w,
                                          height: 62.h,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.14),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              width: 0.88.sp,
                                              color: Colors.black
                                                  .withOpacity(0.62),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            card.image,
                                            width: 42.w,
                                            height: 62.h,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ...List.generate(
                            Poker.defaultPositions.length,
                            (index) {
                              final position = Poker.defaultPositions[index];
                              final player = value.players[index];

                              if (player == null) return const SizedBox();

                              return Positioned(
                                top: position.top,
                                left: position.left,
                                right: position.right,
                                bottom: position.bottom,
                                child: PlayerCard(player: player),
                              );
                            },
                          ),
                          Positioned(
                            left: 0,
                            bottom: 16.h,
                            child: Row(
                              children: List.generate(
                                value.player.hand.length,
                                (index) {
                                  final card = value.player.hand[index];
                                  if(!card.opened) return const SizedBox();

                                  return Padding(
                                    padding: EdgeInsets.only(right: 6.w),
                                    child: Image.asset(
                                      card.image,
                                      width: 42.w,
                                      height: 62.h,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: SafeArea(
                      child: ActionsTable(
                        doAllIn: value.doAllIn,
                        doCall: value.doCall,
                        doFold: value.foldCards,
                        doRaise: value.doRaise,
                        multiplyRaise: value.multiplyBet,
                        increaseRaise: value.increaseRaise,
                        decreaseRaise: value.decreaseRaise,
                        call: value.call,
                        raise: value.raise,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
