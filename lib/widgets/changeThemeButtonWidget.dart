import 'package:findme/views/settings/darkMode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<darkMode>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<darkMode>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}

