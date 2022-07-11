// 🚩 Dada Ki Jay Ho 🚩


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sih_help_disabled_people/Categories/hand_schemes.dart';
import 'package:sih_help_disabled_people/Categories/categories_screen.dart';
import 'package:sih_help_disabled_people/Categories/scheme_detail.dart';

import 'package:sih_help_disabled_people/login/login_page.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:sih_help_disabled_people/providers/app_setting_provider.dart';
import 'package:sih_help_disabled_people/settings/setting_screen.dart';

void main() async {
  // ignore: avoid_print
  print("Dada Ki Jay H o");
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode,));
}


class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({ Key? key, this.savedThemeMode }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            primary: Colors.purple, secondary: Colors.green),
        )
      ),
      dark: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 34, 33, 33),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color:Colors.white)
        ),
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (lightTheme, darkTheme) =>
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AppSettingProvider(),
            )
          ],
          child: MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            home: const SettingScreen(),
          ),
        ),
    );
  }
}