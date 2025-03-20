import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/story_provider.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StoryProvider>(context, listen: false);
    return Material(
      color: AppTheme.black,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 9.h),
            const SecondaryAppBar(),
            SizedBox(height: 50.h),
            StoryCard(
              asset: 'assets/png/wild_west.png',
              title: 'Wild West',
              onTap: () => provider.selectStory(stories[0]),
            ),
            SizedBox(height: 36.h),
            StoryCard(
              asset: 'assets/png/ancient_greece.png',
              title: 'Ancient Greece',
              onTap: () => provider.selectStory(stories[1]),
            ),
            SizedBox(height: 36.h),
            StoryCard(
              asset: 'assets/png/knights_armor.png',
              title: "Knight's Armor",
              onTap: () => provider.selectStory(stories[2]),
            ),
          ],
        ),
      ),
    );
  }
}
