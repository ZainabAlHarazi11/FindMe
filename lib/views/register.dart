import 'dart:core';


import 'package:findme/_routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:findme/utils/colors.dart';
import 'package:line_icons/line_icons.dart';
import 'package:findme/Services/auth.dart';

class RegisterPage extends StatefulWidget {
  final Function toggleView;
  RegisterPage({ this.toggleView });

  @override
  _RegisterPageState createState() => _RegisterPageState();

}

//for gender selection.
class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  int _genderRadioBtnVal = -1;
  int _purposeRadioBtnVal = -1;

  final AuthService _auth = AuthService();

// user info
  String userName = '';
  String userEmail = '';
  String userPhNum = '';
  String userPass = '';
  String Error = '';

  void _handleGenderChange(int value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  void _handlePurposeChange(int value) {
    setState(() {
      _purposeRadioBtnVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );

    final  appBar2 = AppBar(

    actions: <Widget>[
    FlatButton.icon(
    icon: Icon(Icons.person),
    label: Text('Sign In'),
    onPressed: () => widget.toggleView(),
    ),
    ],
    );

    final pageTitle = Container(
      child: Text(
        "Tell us about you.",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );


    SizedBox(
      height: 30.0,
    );
    final registerForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            //user name er name field
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(LineIcons.user,
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              validator: (val) => val.isEmpty ? 'Your full name is required' : null ,
              onChanged: (val) {
                setState(() => userName = val);
              },
            ),

            //user email address field
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email address",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(LineIcons.envelope,
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              validator: (val) => val.isEmpty ? 'Your email is required' : null,
              onChanged: (val) {
                setState(() => userEmail = val);
              },
            ),

            // user phone number
            TextFormField(
              decoration: InputDecoration(
                labelText: "Phone number",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(LineIcons.mobile_phone,
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              validator: (val) =>
              val.isEmpty
                  ? 'Your phone number is required'
                  : null,
              onChanged: (val) {
                setState(() => userPhNum = val);
              },
            ),

            //user password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(LineIcons.lock,
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              validator: (val) =>
              val.length < 8
                  ? 'The password should not be less than 8 characters'
                  : null,
              onChanged: (val) {
                setState(() => userPass = val);
              },
            ),


          ],
        ),
      ),
    );


// the gender of the user radio button
    final gender = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Male"),
          Radio(
            value: 1,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Female"),
        ],
      ),
    );


    //the purpose of the user radio button ///// needs editing!!!!!
    final purpose = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: _purposeRadioBtnVal,
            onChanged: _handlePurposeChange,
          ),
          Text("person"),
          Radio(
            value: 1,
            groupValue: _purposeRadioBtnVal,
            onChanged: _handlePurposeChange,
          ),
          Text("Authority"),
        ],
      ),
    );

    //register button
    final submitBtn = Padding(
    padding: EdgeInsets.only(top: 20.0),

        child: Container(

        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),

            child: Material(
             borderRadius: BorderRadius.circular(7.0),
             color: primaryColor,
             elevation: 10.0,
             shadowColor: Colors.white70,
             child: MaterialButton(
                 child: Text(
                   'SIGN UP',
                   style: TextStyle(
                     fontWeight: FontWeight.w800,
                     fontSize: 20.0,
                     color: Colors.white,
                   ),
                 ),
               //  onPressed: ()=> Navigator.pushNamed(context, homeViewRoute),
                 onPressed: () async {
                   if(_formKey.currentState.validate()){
                      dynamic result = await _auth.registerWithNameEmailPhoneAndPass(userName,userEmail,userPhNum,userPass);
                        if(result == null) {
                          setState(() {
                         //Error = 'Please supply a valid email';
                        });

                     }

                   }

                 }

                  ),

               ),
         ),

     );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
             //appBar2,
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    registerForm,
                    gender,
                    purpose,
                    submitBtn,

    //SizedBox(height: 12.0),
    //Text(
    //Error,
    //style: TextStyle(color: Colors.red, fontSize: 14.0),

      //           ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}// class end


  ///////********************* method and its implementation
  /*
  Widget _buildFormField(String label, IconData icon) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          icon,
          color: Colors.black38,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
        onChanged:(val) {
          setState(() => label = val);
          print(label);
        }
    );
*/
//implementation
    //_buildFormField('Name', LineIcons.user),
    //  formFieldSpacing,
    //_buildFormField('Email Address', LineIcons.envelope),
    //formFieldSpacing,
    //_buildFormField('Phone Number', LineIcons.mobile_phone),
    //formFieldSpacing,
    //_buildFormField('Password', LineIcons.lock),
    //formFieldSpacing,



