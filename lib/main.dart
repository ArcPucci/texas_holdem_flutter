import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:texas_holdem/presentation/screens/screens.dart';

import 'backend_integration.dart';
import 'presentation/providers/providers.dart';

void main() {
  runZonedGuarded(
    () async {
      await initBackend();

      WidgetsFlutterBinding.ensureInitialized();

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      final preferences = await SharedPreferences.getInstance();
      final repository = LocalDataRepository(preferences);

      runApp(
        ScreenUtilInit(
          designSize: const Size(390, 844),
          builder: (context, child) {
            return MyApp(localDataRepository: repository);
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
  const MyApp({super.key, required this.localDataRepository});

  final LocalDataRepository localDataRepository;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();

    final cards = widget.localDataRepository.getReceivedCards();
    final finalRoom =
        (!widget.localDataRepository.getFinalRoomState() && cards.length == 5);

    router = GoRouter(
      initialLocation: finalRoom ? '/final' : '/',
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
                      routes: [
                        GoRoute(
                          path: 'poker',
                          builder: (context, state) => const PokerScreen(),
                        ),
                      ],
                    ),
                    GoRoute(
                      path: 'ancient_greece',
                      builder: (context, state) => const AncientGreeceScreen(),
                      routes: [
                        GoRoute(
                          path: 'poker',
                          builder: (context, state) => const PokerScreen(),
                        ),
                      ],
                    ),
                    GoRoute(
                      path: 'knights_armor',
                      builder: (context, state) => const KnightsArmorScreen(),
                      routes: [
                        GoRoute(
                          path: 'poker',
                          builder: (context, state) => const PokerScreen(),
                        ),
                      ],
                    ),
                  ],
                ),
                GoRoute(
                  path: 'poker',
                  builder: (context, state) => const DefaultPokerScreen(),
                ),
              ],
            ),
            GoRoute(
              path: '/final',
              builder: (context, state) => const FinalRoomScreen(),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: widget.localDataRepository),
        ChangeNotifierProvider(
          create: (context) => LocalDataProvider(
            repository: widget.localDataRepository,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => StoryProvider(
            router,
            Provider.of(context, listen: false),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
