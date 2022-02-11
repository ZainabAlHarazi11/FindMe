import 'package:findme/Services/auth.dart';
import 'package:findme/_routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class settingPage extends StatelessWidget{

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black
        ),
          backgroundColor: Colors.white,
          title: Text("Settings",style: TextStyle(color: Colors.black),),
      ),
      body: Stack(
       children: <Widget>[
      SingleChildScrollView(
       // padding: const EdgeInsets.all(16.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.all(8.0) ,
              color: Colors.purple,
              child: ListTile(
                onTap: (){},
                title: Text("User Name", style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w500
                  ,)
                  ,)

    )
    ),

   //settings options
            const SizedBox(height: 10.0),
            Card(
             elevation: 4.0,
             margin: const EdgeInsets.fromLTRB(32, 8, 32, 16) ,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
             child: Column(
               children: <Widget>[
                 ListTile(
                   leading: Icon(Icons.lock_outline,color: Colors.purple,),
                   title: Text("Change Password") ,
                   trailing: Icon(Icons.keyboard_arrow_right),
                   onTap: (){
                    },
              ),
                 ListTile(
                   leading: Icon(Icons.language,color: Colors.purple,),
                   title: Text("Change Language") ,
                   trailing: Icon(Icons.keyboard_arrow_right),
                   onTap: (){
                 },
              ),

                  ListTile(
                    leading: Icon(LineIcons.location_arrow,color: Colors.purple,),
                    title: Text("Change Location") ,
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      },
                  ),

                 ListTile(
                   leading: Icon(LineIcons.user,color: Colors.purple),
                   title: Text("Logout") ,
                   trailing: Icon(LineIcons.user),
                   //onTap: () async {
                    //await _auth.signOut();
                    onTap: () => Navigator.pushNamed(context, landingViewRoute)

                 ),
               ],
             ),
           ),

           const SizedBox(height: 20.0),
           Text("  Appearance",style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.purple,
           ),),
           SwitchListTile(
             activeColor: Colors.purple,
             contentPadding: const EdgeInsets.all(0),
             value: false,
             title: Text("    Dark Mode"),
             onChanged: (val){},
           )

        ],
        ),
    ),
    ],
    ),
    );

  }
  
  
}