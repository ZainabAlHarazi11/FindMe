import 'package:flutter/material.dart';
//import 'package:findme/models/feed.dart';
//import 'package:findme/widgets/feed_card1.dart';
//import 'package:findme/widgets/feed_card2.dart';
//import 'package:findme/widgets/feed_card3.dart';


class FeedsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Whats going on?!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );

    //Search Bar
    final searchBar = Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      height: 50.0,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.only(top: 15.0),
          hintText: 'Search for active cases...',
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          padding: EdgeInsets.only(top: 40.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    pageTitle,
                    searchBar,

                   // FeedCard1(feed: feeds[0]),
                    SizedBox(
                      height: 10.0,
                    ),

                   // FeedCard2(
                    //  feed: feeds[1],
                   // ),
                    SizedBox(
                      height: 10.0,
                    ),

                   // FeedCard3(
                      //feed: feeds[2],
                    //),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );





  }
}
