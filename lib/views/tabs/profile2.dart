
import 'package:findme/_routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Profile2 extends StatelessWidget{
  String profile;
  //Profile2(this.profile);
  Profile2();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

     Widget _buildIconTile2(IconData icon, Color color, String title, int index) {
      return ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
          leading: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10.0),
            ),

            child: Center(
              child: Icon(
                icon, color: Colors.white,

              ),
            ),
          ),
          trailing: Icon(LineIcons.chevron_circle_right),
          onTap: () {
            Navigator.pushNamed(context, 'settingsViewRoute');
          }
      );
    }
  }



}