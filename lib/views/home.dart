import 'package:findme/Services/auth.dart';
import 'package:findme/main.dart';
import 'package:flutter/material.dart';
import 'package:findme/utils/colors.dart';
import 'package:findme/views/tabs/chats.dart';
import 'package:findme/views/tabs/feeds.dart';
import 'package:findme/views/tabs/notifications.dart';
import 'package:findme/views/tabs/profile.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  final AuthService _auth = AuthService();

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    FeedsPage(),
    ChatsPage(),
    NotificationsPage(),
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {


    final bottomNavBar = BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey.withOpacity(0.6),
      elevation: 0.0,

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.comments),
          title: Text(
            'Chats',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.bell),
          title: Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );


    return Scaffold(

      bottomNavigationBar: bottomNavBar,
      body: Stack(
      children: <Widget>[
        _pages[_currentIndex],

        // alert button
        Positioned(
          top:-10,
          right:-20,
          child: Container(
              width: 100,
              height: 100,
              alignment:Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            //  child: Icon(Icons.add_alert),
        )
    ),

        Positioned(
         top: 25,
         right:10,

         child: IconButton(
           icon: Icon(Icons.add_alert, size: 30.0),
            onPressed: (){


            },


           ),
         )
       ],
      ),
    );
  }
}
