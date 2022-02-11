import 'package:findme/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:findme/_routing/routes.dart';
import 'package:findme/utils/colors.dart';
import 'package:flutter/services.dart';

//welcome page.
class WelcomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // Change Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
           flex:5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AvailableImages.welcomeLogo,alignment: (Alignment.bottomRight
                  ),
                   fit: BoxFit.fitHeight
                ),
              ),
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children:  [
                      TextSpan(
                        text:"Find Me!",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                            color: Colors.pinkAccent,
                        ),
                      ),
                      TextSpan(
                        text: "   WHERE WE CAN HELP OUR LOVED ONES",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                            color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, landingViewRoute);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      padding:
                      EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: primaryColor
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "GET STARTED",
                            style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }

}
