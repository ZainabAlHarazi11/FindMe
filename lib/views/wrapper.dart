import 'package:findme/models/userAuth.dart';
import 'package:findme/views/authentication/authenticate.dart';
import 'package:findme/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'landing.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<userAuth>(context);

    if (user== null)
      return Authenticate();
    else{
      return HomePage();
    }



    // return either the Home or Authenticate widget
  }
}