import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class settingPage extends StatelessWidget{
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
      body: SingleChildScrollView(
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
                title: Text("User Name", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,),)

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
                    leading: Icon(Icons.dark_mode,color: Colors.purple,),
                    title: Text("Change Mode") ,
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      },
                  ),
               ],
             ),
           ),

           const SizedBox(height: 20.0),
           Text("Appearance",style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.indigo,
           ),),
           SwitchListTile(
             activeColor: Colors.purple,
             contentPadding: const EdgeInsets.all(0),
             value: true,
             title: Text("Dark Mode"),
             onChanged: (val){},
           )

        ],
        ),

    ),
    );

  }
  
  
}