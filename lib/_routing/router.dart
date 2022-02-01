import 'package:findme/views/settings/settingPage.dart';
import 'package:findme/views/tabs/welcome.dart';
import 'package:flutter/material.dart';
import 'package:findme/_routing/routes.dart';
import 'package:findme/views/chat_details.dart';
import 'package:findme/views/home.dart';
import 'package:findme/views/landing.dart';
import 'package:findme/views/login.dart';
import 'package:findme/views/register.dart';
import 'package:findme/views/reset_password.dart';
import 'package:findme/views/user_details.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case welcomeViewRoute:
      return MaterialPageRoute(builder: (context) => WelcomePage());
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case registerViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case settingsViewRoute:
      return MaterialPageRoute(builder: (context) => settingPage());
    case chatDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => ChatDetailsPage(userId: settings.arguments));
    case userDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => UserDetailsPage(userId: settings.arguments));
      break;

    default:
      return MaterialPageRoute(builder: (context) => LandingPage());
  }
}
