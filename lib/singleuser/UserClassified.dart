import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../custometheam.dart';

class UserClassified extends StatefulWidget {
  const UserClassified({super.key});

  @override
  State<UserClassified> createState() => _UserClassifiedState();
}

class _UserClassifiedState extends State<UserClassified> {
  List<Data> dataList = [
    Data(
        name: "Car For Sale",
        imageURL: 'assets/images/carseal.jpg',
        companyName: 'D company',
        price: "\$10000"),
    Data(
        name: "Apartment For Sale",
        imageURL: 'assets/images/bildingforseal.jpg',
        companyName: 'D company',
        price: "\$10000"),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "House For Rent",
        imageURL: 'assets/images/resort_restarunts.jpg',
        companyName: 'D company',
        price: "\$10000"),
    Data(
        name: "Room For Rent",
        imageURL: 'assets/images/bildingforseal.jpg',
        companyName: 'D company',
        price: "\$10000"),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return SafeArea(
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
                      height: 16.h,
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
                                width: (30.w),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 5),
                                child: Text(
                                  dataList[index].companyName,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w800,
                                      color: cardtextcolor,
                                      fontFamily: 'Raleway'),
                                ),
                              ),
                              Divider(
                                height: 10,
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10, top: 15, bottom: 5),
                                child: Text(
                                  dataList[index].price,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: cardsub1textcolor,
                                      fontFamily: 'Raleway'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ));
    },);
  }
}

class Data {
  String name;
  String companyName;
  String imageURL;
  String price;

  Data(
      {required this.name,
      required this.imageURL,
      required this.companyName,
      required this.price});
}
