import 'package:brightdirectories/NavigationDrawPage.dart';
import 'package:brightdirectories/custometheam.dart';
import 'package:brightdirectories/pageroute/NavigationPageRoute.dart';
import 'package:brightdirectories/singleuser/UserArticles.dart';
import 'package:brightdirectories/singleuser/UserClassified.dart';
import 'package:brightdirectories/singleuser/UserProfileDetail.dart';
import 'package:brightdirectories/singleuser/UserReviewes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowUserDetails extends StatefulWidget {
  const ShowUserDetails({super.key});

  @override
  State<ShowUserDetails> createState() => _ShowUserDetailsState();
}

class _ShowUserDetailsState extends State<ShowUserDetails> {
  List<userDet> user_det = [
    userDet(name: "Profile"),
    userDet(name: "Articles"),
    userDet(name: "Classified"),
    userDet(name: "Reviewes"),
  ];
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
  List<String> icon_black = [
    "assets/images/youtube.png",
    "assets/images/instagram.png",
    "assets/images/linkedin.png",
    "assets/images/google-plus.png",
    "assets/images/twitter.png",
    "assets/images/facebook.png",
  ];

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return Scaffold(
              backgroundColor: Colors.white,
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
                title: Text(
                  "Member Listing Detail",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                elevation: 0.5,
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Card(
                          elevation: 5,
                          shadowColor: cardbgcolor,
                          color: cardbgcolor,
                          margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/nemberimage.jpg",
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Text(
                                  "Mark Lee",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: cardtextcolor,
                                      fontFamily: 'Raleway'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Text(
                                  "Member Since: October, 2021",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: cardtextcolor,
                                      fontFamily: 'Raleway'),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 170,
                                        margin: EdgeInsets.all(5),
                                        decoration: const ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.lightGreen,
                                              Colors.lightGreen
                                            ],
                                          ),
                                        ),
                                        height: 46,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            ElevatedButton(
                                              onPressed: () async {
                                                //Get.toNamed(RouteHelper.getotpScreenpage());
                                                // Get.back();
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shadowColor: Colors.transparent,
                                                backgroundColor:
                                                    Colors.transparent,
                                                //minimumSize: Size(MediaQuery.of(context).size.width, 40),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5), // <-- Radius
                                                ),
                                              ),
                                              child: const Text('Review Us',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 170,
                                        margin: EdgeInsets.all(5),
                                        decoration: const ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.lightBlue,
                                              Colors.lightBlue
                                            ],
                                          ),
                                        ),
                                        height: 46,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.email,
                                              color: Colors.white,
                                            ),
                                            ElevatedButton(
                                              onPressed: () async {
                                                //Get.toNamed(RouteHelper.getotpScreenpage());
                                                // Get.back();
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shadowColor: Colors.transparent,
                                                backgroundColor:
                                                    Colors.transparent,
                                                //minimumSize: Size(MediaQuery.of(context).size.width, 40),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5), // <-- Radius
                                                ),
                                              ),
                                              child: const Text('E-mail',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                alignment: Alignment.bottomRight,
                                height: 50,
                                width: MediaQuery.of(context).size.width,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding: EdgeInsets.all(1),
                          margin: EdgeInsets.all(1),
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
                          child: Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: user_det.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    currentIndex = index;
                                    if (currentIndex == 0) {
                                      UserProfileDetail();
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                      width: 85,
                                      height: 50,
                                      //  padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.all(5),
                                      decoration: currentIndex == index
                                          ? BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  cardclickcolor,
                                                  cardclickcolor,
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20))
                                          : BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueGrey),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Colors.white,
                                                  Colors.white,
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          user_det[index].name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: currentIndex == index
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontFamily: 'Raleway'),
                                        ),
                                      )),
                                );
                              },
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      UserReviewes()
                    ],
                  ),
                ),
              ));
        });
  }
}

class userDet {
  String name;

  userDet({required this.name});
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
