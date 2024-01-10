import 'dart:math';

import 'package:brightdirectories/HomePage.dart';
import 'package:brightdirectories/SerachPage.dart';
import 'package:brightdirectories/coupons/CouponsDetails.dart';
import 'package:brightdirectories/evendetails/EventByCalender.dart';
import 'package:brightdirectories/evendetails/EventInLocation.dart';
import 'package:brightdirectories/evendetails/EventListing.dart';
import 'package:brightdirectories/galleriesdetails/AudioDetails.dart';
import 'package:brightdirectories/galleriesdetails/ShowPhotoGalleries.dart';
import 'package:brightdirectories/galleriesdetails/VideoDetails.dart';
import 'package:brightdirectories/memberdetails/MemberReviews.dart';
import 'package:brightdirectories/memberdetails/SearchMember.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'evendetails/SingeEventView.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  double value = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(""),
            // currentAccountPicture: CircleAvatar(
            //   child: ClipOval(
            //     child: Image.asset(
            //       "assets/images/depositphotos.jpg",
            //       height: 90,
            //       width: 90,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pngtree_office.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/logo/home1.png",
                  width: 20,
                  height: 20,
                ),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Member"),
                leading: Image.asset(
                  "assets/logo/people.png",
                  width: 20,
                  height: 20,
                ),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                      title: Text("Search Member"),
                      leading: Image.asset(
                        "assets/logo/group.png",
                        width: 20,
                        height: 20,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchMember()),
                        );
                      }),

                  ListTile(
                    title: Text("Member Review"),
                    leading: Image.asset(
                      "assets/logo/review.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MemberReviews()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Business Member"),
                    leading: Image.asset(
                      "assets/logo/handshake.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Events"),
                leading: Image.asset(
                  "assets/logo/party.png",
                  width: 20,
                  height: 20,
                ),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Event Listing"),
                    leading: Image.asset(
                      "assets/logo/event1.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventListing()),
                      );
                    },
                  ),

                  ListTile(
                    title: Text("Event In Location"),
                    leading: Image.asset(
                      "assets/logo/location1.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventInLocation()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Event by Calenders"),
                    leading: Image.asset(
                      "assets/logo/event2.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventByCalender()),
                      );
                    },
                  ),

                  //more child menu
                ],
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/logo/promo-code.png",
                  width: 20,
                  height: 20,
                ),
                title: Text("Coupons"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CouponsDetails()),
                  );
                },
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Galleries"),
                leading: Image.asset(
                  "assets/logo/gallery.png",
                  width: 20,
                  height: 20,
                ),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Photo Galleries"),
                    leading: Image.asset(
                      "assets/logo/photos.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShowPhotoGalleries()),
                      );
                    },
                  ),

                  ListTile(
                    title: Text("Video"),
                    leading: Image.asset(
                      "assets/logo/video.png",
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideoDetails()),
                      );
                    },
                  ),
                  ListTile(
                      title: Text("Audio"),
                      leading: Image.asset(
                        "assets/logo/multimedia.png",
                        width: 20,
                        height: 20,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AudioDetails1()),
                        );
                      }),

                  //more child menu
                ],
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Classifides"),
                //        leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Classifides Ads"),
                    //     leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Classifides Products"),
                    //   leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),
                  //more child menu
                ],
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ListTile(
                //leading: Icon(Icons.favorite),
                title: Text("Properties"),
                onTap: () => null,
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ListTile(
                //leading: Icon(Icons.favorite),
                title: Text("Blog"),
                onTap: () => null,
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ListTile(
                //leading: Icon(Icons.favorite),
                title: Text("Contact Us"),
                onTap: () => null,
              ),
            ],
          )
        ],
      )),
    );
  }
}
