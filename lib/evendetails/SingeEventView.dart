import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../custometheam.dart';

enum Share {
  facebook,
  twitter,
  whatsapp,
  whatsapp_business,
  share_system,
}

class SingeEventView extends StatefulWidget {
  const SingeEventView({super.key});

  @override
  State<SingeEventView> createState() => _SingeEventViewState();
}

class _SingeEventViewState extends State<SingeEventView> {
  File? file;
  List<String> icon_black = [
    "assets/images/youtube.png",
    "assets/images/instagram.png",
    "assets/images/linkedin.png",
    "assets/images/google-plus.png",
    "assets/images/twitter.png",
    "assets/images/facebook.png",
  ];
  List<Data> dataList = [
    Data(
        name: "Lorem Ipsum is simply dum...",
        imageURL: 'assets/images/eventimage2.jpg',
        companyname: 'The Late Night Show',
        location: "LIMASSOL, CA, Afghanistan",
        date: "Jul-29-2021"),
    Data(
        name: "Holi Party",
        imageURL: 'assets/images/eventimage1.jpg',
        companyname: 'Lorem Ipsum is simply dum...',
        location: "LIMASSOL, CA, Afghanistan",
        date: "Jul-29-2021"),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "Test Event",
        imageURL: 'assets/images/eventimage1.jpg',
        companyname: 'Lorem Ipsum is simply dum...',
        location: "LIMASSOL, CA, Afghanistan",
        date: "Jul-29-2021"),
    Data(
        name: "Saturday Night",
        imageURL: 'assets/images/eventimage2.jpg',
        companyname: 'Lorem Ipsum is simply dum...',
        location: "LIMASSOL, CA, Afghanistan",
        date: "Aug-13-2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: cardbgcolor,
              leading: IconButton(
                icon: Image.asset(
                  "assets/images/arrow.png",
                  height: 20,
                  width: 20,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: const Text(
                "Single Event",
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              elevation: 0.5,
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                top: true,
                minimum: const EdgeInsets.all(5),
                bottom: true,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(1),
                          margin: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Card(
                                elevation: 5,
                                shadowColor: cardbgcolor,
                                color: cardbgcolor,
                                margin: const EdgeInsets.all(8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          "assets/images/eventimage3.jpg",
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Dance",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700,
                                                color: cardtextcolor,
                                                fontFamily: 'Raleway'),
                                          ),
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  showdialog(context);
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: Image.asset(
                                                    "assets/images/google-maps.png",
                                                    fit: BoxFit.cover,
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  onButtonTap(
                                                      Share.share_system,
                                                      "User data List",
                                                      "https://www.brightdirectories.com/demo/public/uploads/original/623592121633347866.jpg");
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: Image.asset(
                                                    "assets/images/next.png",
                                                    fit: BoxFit.cover,
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/images/calendar.png",
                                            height: 15,
                                            width: 15,
                                            color: cardsub1textcolor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Oct-12-2021",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: cardsubtextcolor,
                                                  fontFamily: 'Raleway'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Card(
                                elevation: 10,
                                shadowColor: cardbgcolor,
                                color: cardbgcolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(1),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xfff8f9fa),
                                          Color(0xfff6f7fb),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Event Information",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: cardtextcolor,
                                              fontFamily: 'Raleway'),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Venue : ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "hotel arya",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Price : ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "\$1500",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Location",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.4,
                                                child: Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text(
                                                    "School Street London LIMASSOL CA 154789 Afghanistan",
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: cardtextcolor,
                                                        fontFamily: 'Raleway'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Text(
                                                      "Start Time :",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width / 1.4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "12:00:00 AM",
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                cardtextcolor,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Text(
                                                      "End Time :",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width / 1.4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "12:00:00 AM",
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                cardtextcolor,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Text(
                                                      "Start Date :",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width / 1.4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "Oct-12-2021",
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                cardtextcolor,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Text(
                                                      "End Date :",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width /1.4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "Nov-21-2021",
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                cardtextcolor,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Event Description : ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                                                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                                                  "when an unknown printer took a galley of type and scrambled it to make a type "
                                                  "specimen book",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 2,
                                          thickness: 0.1,
                                          color: Colors.black,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width / 1.4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "Event ID : #37",
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                cardtextcolor,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(1),
                                                    child: Text(
                                                      "Posted By",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(1),
                                                    child: Text(
                                                      "Mark Lee",
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(1),
                                                    child: Text(
                                                      "/ Jan-01-1970",
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: cardtextcolor,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Card(
                                elevation: 10,
                                shadowColor: cardbgcolor,
                                color: cardbgcolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(1),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xfff8f9fa),
                                          Color(0xfff6f7fb),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Posted By",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: cardtextcolor,
                                              fontFamily: 'Raleway'),
                                        ),
                                        Divider(
                                          height: 2,
                                          thickness: 0.1,
                                          color: Colors.black,
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/eventimage3.jpg",
                                                fit: BoxFit.cover,
                                                width: 80,
                                                height: 80,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Center(
                                          child: Text(
                                            "Robert Moracco",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: cardtextcolor,
                                                fontFamily: 'Raleway'),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Center(
                                          child: Text(
                                            "Member Since October, 2021",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: cardtextcolor,
                                                fontFamily: 'Raleway'),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Divider(
                                          height: 2,
                                          thickness: 0.1,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Contact Info",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: cardtextcolor,
                                              fontFamily: 'Raleway'),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5, bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                margin: const EdgeInsets.all(1),
                                                decoration: BoxDecoration(
                                                    gradient:
                                                        const LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Colors.black12,
                                                        Colors.black12,
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/link.png",
                                                    height: 10,
                                                    width: 10,
                                                    color: cardsub1textcolor,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Text(
                                                  "www.test.com",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: cardsubtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 5),
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: icon_black.length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      icon_black[index],
                                                      fit: BoxFit.cover,
                                                      width: 30,
                                                      height: 30,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                        "Related Events",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: cardtextcolor,
                            fontFamily: 'Raleway'),
                      ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                  child: Card(
                                elevation: 5,
                                shadowColor: cardbgcolor,
                                color: cardbgcolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xfff8f9fa),
                                        Color(0xfff6f7fb),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(1),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            dataList[index].imageURL,
                                            fit: BoxFit.cover,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 15.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Text(
                                          dataList[index].companyname,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: cardsubtextcolor,
                                              fontFamily: 'Raleway'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Text(
                                          dataList[index].name,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: cardtextcolor,
                                              fontFamily: 'Raleway'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/images/calendar.png",
                                              height: 15,
                                              width: 15,
                                              color: cardsub1textcolor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Text(
                                                dataList[index].date,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: cardsubtextcolor,
                                                    fontFamily: 'Raleway'),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/images/location2.png",
                                              height: 20,
                                              width: 20,
                                              color: cardsub1textcolor,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Text(
                                                  dataList[index].location,
                                                  maxLines: 5,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: cardsubtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(
                                        height: 2,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: 30,
                                          width: 60,
                                          padding: EdgeInsets.only(
                                              left: 5,
                                              top: 5,
                                              bottom: 5,
                                              right: 5),
                                          margin: EdgeInsets.only(
                                              left: 5,
                                              top: 5,
                                              bottom: 5,
                                              right: 5),
                                          decoration: BoxDecoration(
                                            color: cardclickcolor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "View",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontFamily: 'Raleway'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  void showdialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(canvasColor: Colors.orange),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            title: Text(
              'Google Map',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: cardtextcolor,
                  fontFamily: 'Raleway'),
            ),
            content: Container(
              height: MediaQuery.of(context).size.height / 3,
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> onButtonTap(
      Share share, String strData, String strPhotourl) async {
    String url =
        "https://www.brightdirectories.com/demo/public/uploads/original/623592121633347866.jpg";
    String msg = "$strData, $url";

    String? response;
    final FlutterShareMe flutterShareMe = FlutterShareMe();
    switch (share) {
      case Share.facebook:
        response = await flutterShareMe.shareToFacebook(url: url, msg: msg);
        break;
      // case Share.messenger:
      //   response = await flutterShareMe.shareToMessenger(url: url, msg: msg);
      //   break;
      case Share.twitter:
        response = await flutterShareMe.shareToTwitter(url: url, msg: msg);
        break;
      case Share.whatsapp:
        if (file != null) {
          response =
              await flutterShareMe.shareToWhatsApp(imagePath: url, msg: msg);
        } else {
          response = await flutterShareMe.shareToWhatsApp(msg: msg);
        }
        break;
      case Share.whatsapp_business:
        response = await flutterShareMe.shareToWhatsApp(msg: msg);
        break;
      case Share.share_system:
        response = await flutterShareMe.shareToSystem(
          msg: msg,
        );
        break;
      // case Share.whatsapp_personal:
      //   response = await flutterShareMe.shareWhatsAppPersonalMessage(
      //       message: msg, phoneNumber: 'phone-number-with-country-code');
      //   break;
      // case Share.share_instagram:
      //   response = await flutterShareMe.shareToInstagram(
      //       filePath: file!.path,
      //       fileType: videoEnable ? FileType.video : FileType.image);
      //   break;
      // case Share.share_telegram:
      //   response = await flutterShareMe.shareToTelegram(msg: msg);
      //   break;
    }
    debugPrint(response);
  }
}

class Data {
  String name;
  String imageURL;
  String companyname;
  String location;
  String date;

  Data({
    required this.name,
    required this.imageURL,
    required this.companyname,
    required this.location,
    required this.date,
  });
}
