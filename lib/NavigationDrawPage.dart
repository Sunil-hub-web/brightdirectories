import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                //leading: Icon(Icons.favorite),
                title: Text("Home"),
                onTap: () => null,
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Member"),
                //leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Search Member"),
                    //  leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Member Review"),
                    //  leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Business Member"),
                    //  leading: Icon(Icons.favorite),
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
                //         leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Event Listing"),
                    //           leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Event In Location"),
                    //            leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Event by Calenders"),
                    //           leading: Icon(Icons.favorite),
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
                title: Text("Coupons"),
                onTap: () => null,
              ),
              Divider(
                height: 0.5,
                thickness: 0.1,
                color: Colors.black,
              ),
              ExpansionTile(
                title: Text("Galleries"),
                //         leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Photo Galleries"),
                    //          leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Video"),
                    //             leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Audio"),
                    //          leading: Icon(Icons.favorite),
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
