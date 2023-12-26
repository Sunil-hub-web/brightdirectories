import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../custometheam.dart';

class MemberReviews extends StatefulWidget {
  const MemberReviews({super.key});

  @override
  State<MemberReviews> createState() => _MemberReviewsState();
}

class _MemberReviewsState extends State<MemberReviews> {

  List<Data> dataList = [
    Data(
        name: "Gary Sckeldrin",
        imageURL: 'assets/images/reviewimage.jpg',
        companyName: 'Excellent Service',
        description: 'He was very patient and easy going! Very Recommended!',
        submitdata: "Submitted by Laraa on Thursday, Jan 01, 1970",
        review: 4.0,
        descreview: "Overall rate",
        ),
    Data(
      name: "Gary Sckeldrin",
      imageURL: 'assets/images/reviewimage.jpg',
      companyName: 'Excellent Service',
      description: 'He was very patient and easy going! Very Recommended!',
      submitdata: "Submitted by Laraa on Thursday, Jan 01, 1970",
      review: 3.0,
      descreview: "Overall rate",
    ),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
      name: "Gary Sckeldrin",
      imageURL: 'assets/images/reviewimage.jpg',
      companyName: 'Excellent Service',
      description: 'He was very patient and easy going! Very Recommended!',
      submitdata: "Submitted by Laraa on Thursday, Jan 01, 1970",
      review: 5.0,
      descreview: "Overall rate",),
    Data(
      name: "Gary Sckeldrin",
      imageURL: 'assets/images/reviewimage.jpg',
      companyName: 'Excellent Service',
      description: 'He was very patient and easy going! Very Recommended!',
      submitdata: "Submitted by Laraa on Thursday, Jan 01, 1970",
      review: 3.5,
      descreview: "Overall rate",),
  ];


  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
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
          title: Text(
            "Reviews Listing",
            style: TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          elevation: 0.5,
        ),
        body: SafeArea(
            top: true,
            minimum: EdgeInsets.all(5),
            bottom: true,
            child: Card(
              elevation: 10,
              shadowColor: cardbgcolor,
              color: cardbgcolor,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 100.w,
                margin: EdgeInsets.all(5),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shadowColor: cardbgcolor,
                      color: cardbgcolor,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: 100.w,
                        height: 27.h,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  dataList[index].imageURL,
                                  fit: BoxFit.cover,
                                  height: 100.h,
                                  width: (35.w),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(padding:
                                    EdgeInsets.only(left: 10, top: 10, bottom: 5),
                                      child: Text(
                                        dataList[index].name,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: cardsubtextcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        dataList[index].companyName,
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
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: cardtextcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                      thickness: 0.5,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        dataList[index].descreview,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                            color: cardtextcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,),
                                      child: Container(
                                        padding:
                                        const EdgeInsets.symmetric(vertical: 1),
                                        child: RatingBarIndicator(
                                          rating: dataList[index].review,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          direction: Axis.horizontal,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        dataList[index].submitdata,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                            color: cardsub1textcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )),
      );
    },);
  }
}

class Data {
  String name;
  String companyName;
  String imageURL;
  String description;
  String submitdata;
  double review;
  String descreview;

  Data({required this.name,
    required this.imageURL,
    required this.companyName,
    required this.description,
    required this.submitdata,
    required this.review,
    required this.descreview,
  });
}