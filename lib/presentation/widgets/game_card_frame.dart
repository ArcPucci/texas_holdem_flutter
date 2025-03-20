import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/models/models.dart';

class GameCardFrame extends StatelessWidget {
  const GameCardFrame({super.key, required this.card});

  final GameCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41.w,
      height: 62.h,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.14),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 0.88.sp,
          color: Colors.black.withOpacity(0.62),
        ),
      ),
      alignment: Alignment.center,
      child: _buildCard(),
    );
  }

  Widget _buildCard() {
    if (card.opened) {
      return Image.asset(
        card.image,
        width: 42.w,
        height: 62.h,
      );
    }
    return const SizedBox();
  }
}
