import 'package:flutter/material.dart';
import 'package:findme/views/register.dart';
import 'package:findme/views/login.dart';


class Authenticate extends StatefulWidget{
  @override
  _AuthenticateState createState() => _AuthenticateState();

  }


class _AuthenticateState extends State<Authenticate> {

@override
Widget build(BuildContext context){
  return Container(
    child: LoginPage(),

  );



}
}