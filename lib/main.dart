import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:texas_holdem/presentation/screens/screens.dart';

void main() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(
        ScreenUtilInit(
          designSize: const Size(390, 844),
          builder: (context, child) {
            return const MyApp();
          },
        ),
      );
    },
    (error, stack) {
      print(error);
      print(stack);
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();
    router = GoRouter(
      initialLocation: '/modes/poker',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const MainRoomScreen(),
          routes: [
            GoRoute(
              path: 'modes',
              builder: (context, state) => const GameModesScreen(),
              routes: [
                GoRoute(
                  path: 'stories',
                  builder: (context, state) => const StoriesScreen(),
                  routes: [
                    GoRoute(
                      path: 'wild_west',
                      builder: (context, state) => const WildWestScreen(),
                    ),
                    GoRoute(
                      path: 'ancient_greece',
                      builder: (context, state) => const AncientGreeceScreen(),
                    ),
                    GoRoute(
                      path: 'knights_armor',
                      builder: (context, state) => const KnightsArmorScreen(),
                    ),
                  ],
                ),
                GoRoute(
                  path: 'poker',
                  builder: (context, state) => const PokerScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
