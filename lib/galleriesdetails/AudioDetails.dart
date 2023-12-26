import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../custometheam.dart';

class AudioDetails1 extends StatefulWidget {
  const AudioDetails1({super.key});

  @override
  State<AudioDetails1> createState() => _AudioDetails1State();
}

class _AudioDetails1State extends State<AudioDetails1> {
  List<Data> dataList = [
    Data(
        name: "Morning Chillout",
        date: 'Jan-01-1970',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
            'Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when ',
        datalistname: ["Test smart tag"]),
    Data(
        name: "Attention",
        date: 'Jan-01-1970',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
            'Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when '
            'an unknown printer took a galley of t...',
        datalistname: ["charlie", "attention"]),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "Good Life",
        date: 'Jan-01-1970',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
            'Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when ',
        datalistname: ["geazy", "kehlani", "pop"]),
    Data(
        name: "On my way",
        date: 'Jan-01-1970',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
            'Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when ',
        datalistname: ["pop", "alanwalker"]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardbgcolor,
        centerTitle: true,
        title: Text(
          "Audios",
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        elevation: 0.5,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/arrow.png",
            height: 20,
            width: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          /*IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),*/
          IconButton(
            onPressed: () {
              showdialog();
            },
            icon: Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ResponsiveSizer(
        builder: (p0, p1, p2) {
          return Container(
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
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/calendar.png",
                                      height: 15,
                                      width: 15,
                                      color: cardsub1textcolor,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(top: 5, right: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xFF605e7e),
                                            Color(0xFF605e7e),
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/wishlist.png",
                                        height: 20,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, top: 10, bottom: 5),
                          child: Text(
                            dataList[index].name,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: cardtextcolor,
                                fontFamily: 'Raleway'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Text(
                            dataList[index].description,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: cardsubtextcolor,
                                fontFamily: 'Raleway'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SHowUserdata(
                            datalistname: dataList[index].datalistname),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 30,
                            width: 27.w,
                            padding: EdgeInsets.only(
                                left: 5, top: 5, bottom: 5, right: 5),
                            margin: EdgeInsets.only(
                                left: 5, top: 5, bottom: 5, right: 5),
                            decoration: BoxDecoration(
                              color: cardclickcolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "View More",
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
                );
              },
            ),
          );
        },
      ),
    );
  }

  void showdialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(canvasColor: Colors.orange),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            title: Text(
              'Audio Search',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: cardtextcolor,
                  fontFamily: 'Raleway'),
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          // color: Color(0xFFF3F3F3),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xfff8f9fa),
                              Color(0xfff6f7fb),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Audio Name",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5)
                              // prefixIcon: Icon(Icons.search)
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 1,
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Apply Filter",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                        )),
                  ],
                ),
              ),
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
}

class SHowUserdata extends StatelessWidget {
  final List<String> datalistname;

  const SHowUserdata({super.key, required this.datalistname});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: datalistname.length,
            itemBuilder: (context, index) {
              return Card(
                  elevation: 2,
                  shadowColor: cardbgcolor,
                  color: tagbackcolor,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                      margin: EdgeInsets.all(5),
                     // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            tagbackcolor,
                            tagbackcolor,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/label.png",
                                  height: 15,
                                  width: 15,
                                  color: cardsub1textcolor,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    datalistname[index],
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
                      )));
            },
          ),
        );
      },
    );
  }
}

class Data {
  String name;
  String date;
  String description;
  List<String> datalistname;

  Data(
      {required this.name,
      required this.description,
      required this.date,
      required this.datalistname});
}
