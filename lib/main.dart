import 'package:flutter/material.dart';
import 'package:test_flutter_lartest_tech/config/router/app_router.dart';
import 'theme_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: nightTheme.isNight,
        builder: (_, isNight, __) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            themeAnimationCurve: Curves.bounceInOut,
            title: 'Flutter Experiment',
            themeMode: isNight ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              extensions: [
                AppColorTheme(),
              ],
            ),
            darkTheme: ThemeData.dark(),
            routerConfig: appRouter,
          );
        });
  }
}

final nightTheme = ThemeNotify(true);

class ThemeNotify extends ChangeNotifier {
  ThemeNotify(bool night) {
    isNight = ValueNotifier<bool>(night);
  }

  void toggle() {
    isNight.value = !isNight.value;
    isNight.notifyListeners();
  }

  late final ValueNotifier<bool> isNight;
}
