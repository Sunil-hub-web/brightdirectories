import 'package:brightdirectories/HomePage.dart';
import 'package:brightdirectories/evendetails/EventListing.dart';
import 'package:brightdirectories/evendetails/SingeEventView.dart';
import 'package:brightdirectories/memberdetails/MemberReviews.dart';
import 'package:brightdirectories/memberdetails/SearchMember.dart';
import 'package:brightdirectories/singleuser/UserArticles.dart';
import 'package:brightdirectories/singleuser/UserClassified.dart';
import 'package:brightdirectories/singleuser/UserProfileDetail.dart';
import 'package:brightdirectories/singleuser/UserReviewes.dart';
import 'package:brightdirectories/singleuser/showuserdetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicat ion.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        //primarySwatch: Colors.grey,
      ),
      color: Colors.cyan,

      debugShowCheckedModeBanner: false,
      title: 'WhereNx',
      // initialRoute: RouteHelper.getSplashScreenPage(),
      // getPages: RouteHelper.routes,
      home: SingeEventView(),
    );
      //dart fix --apply
  }
}

