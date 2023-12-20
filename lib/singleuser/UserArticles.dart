import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custometheam.dart';

class UserArticles extends StatefulWidget {
  const UserArticles({super.key});

  @override
  State<UserArticles> createState() => _UserArticlesState();
}

class _UserArticlesState extends State<UserArticles> {
  List<Data> dataList = [
    Data(
        name: "How To grow Your Business Idea",
        imageURL: 'assets/images/articalimage.jpg',
        date: 'Oct-06-2021',
        comments: "4",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.hhhhhghhytghhgytghhhghhh"),
    Data(
        name: "How To grow Your Business Idea",
        imageURL: 'assets/images/articalimage.jpg',
        date: 'Oct-06-2021',
        comments: "4",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.hhgtygvgfrdcc"),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "How To grow Your Business Idea",
        imageURL: 'assets/images/articalimage.jpg',
        date: 'Oct-06-2021',
        comments: "4",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.ghtrfdewsdffvggfggggg"),
    Data(
        name: "How To grow Your Business Idea",
        imageURL: 'assets/images/articalimage.jpg',
        date: 'Oct-06-2021',
        comments: "4",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.jjjjjjjhuygtfrdeswqazxcvb"),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return SafeArea(
            top: true,
            minimum: const EdgeInsets.all(5),
            bottom: true,
            child: Card(
              elevation: 10,
              shadowColor: cardbgcolor,
              color: cardbgcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Card(
                      elevation: 5,
                      shadowColor: cardbgcolor,
                      color: cardbgcolor,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: 200,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  dataList[index].imageURL,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/calendar.png",
                                    height: 20,
                                    width: 20,
                                    color: cardsub1textcolor,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "12-15-2023",
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
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image.asset(
                                  //   "assets/images/calendar.png",
                                  //   height: 20,
                                  //   width: 20,
                                  //   color: cardsub1textcolor,
                                  // ),
                                  Icon(Icons.account_circle_sharp,
                                      size: 20, color: cardsub1textcolor),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "Admin",
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
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, bottom: 5),
                              child: Text(
                                dataList[index].name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: cardtextcolor,
                                    fontFamily: 'Raleway'),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, bottom: 5),
                              child: Text(
                                dataList[index].description,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: cardtextcolor,
                                    fontFamily: 'Raleway'),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/conversation.png",
                                      height: 20,
                                      width: 20,
                                      color: cardsub1textcolor,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        "0 Comments",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: cardsub1textcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                  ],
                                )),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 30,
                                width: 120,
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, bottom: 5),
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 5, right: 10),
                                decoration: BoxDecoration(
                                  color: cardclickcolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Read More",
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
                    ));
                  },
                ),
              ),
            ),
          );
        });
  }
}

class Data {
  String name;
  String imageURL;
  String date;
  String description;
  String comments;

  Data(
      {required this.name,
      required this.imageURL,
      required this.date,
      required this.description,
      required this.comments});
}
