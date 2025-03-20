import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:texas_holdem/data/models/models.dart';
import 'package:texas_holdem/data/sources/stories.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';

class StoryProvider extends ChangeNotifier {
  StoryProvider(this._router, this._provider);

  final LocalDataProvider _provider;
  final GoRouter _router;

  Story _story = stories[0];

  Story get story => _story;

  int _page = 0;

  int _length = 0;

  int _gamePage = 0;

  int get page => _page;

  String get _path => _router.routerDelegate.currentConfiguration.fullPath;

  void selectStory(Story story) {
    _page = 0;
    _story = story;
    _router.go(story.path);
  }

  void init(int len, int gamePage) {
    _gamePage = gamePage;
    _length = len;
  }

  void next() {
    if (_page == _gamePage) {
      _router.go("$_path/poker");
    }

    if (_page == _length - 1) {
      if (_provider.receivedCards.length == 5 && !_provider.mainRoomState) {
        _router.go('/final');
        return;
      }

      _router.pop();
      return;
    }

    _page++;
    notifyListeners();
  }
}
