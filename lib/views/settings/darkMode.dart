import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class darkMode extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
  );
}


/*
IN HOME PAGE .. i think you should make a new class for it
 //start of dark mode code
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
    ? 'DarkTheme'
    : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
       // actions:
         //   ChangeThemeButtonWidget(),

     // body: Center(
       // child: Text(
         // 'Hello $text!',
           //style: TextStyle(
             //fontSize: 32,
             //fontWeight: FontWeight.bold,
             ),
         // )
    //  ),



    );

 */