import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.black,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 9.h),
            const SecondaryAppBar(),
            SizedBox(height: 50.h),
            ...List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 36.h),
                child: const StoryCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
