import 'package:flutter/material.dart';

import 'app/home.dart';
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeAnimationCurve: Curves.bounceInOut,
            title: 'Flutter Demo',
            themeMode: isNight ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              extensions: [
                AppColorTheme(),
              ],
            ),
            darkTheme: ThemeData.dark(),
            home: const MyHomePage(),
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
