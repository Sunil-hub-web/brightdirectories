import 'package:brightdirectories/SerachPage.dart';
import 'package:brightdirectories/custometheam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NavigationDrawPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List images = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  int _currentIndex = 0;
  final CarouselController controller = CarouselController();
  String? dropdownCategory, dropdownSubcategory, dropdownSubSUbCategory;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "USA11", child: Text("USA")),
      const DropdownMenuItem(value: "Canada11", child: Text("Canada")),
      const DropdownMenuItem(
          value: "Brazil11", child: Text("Brazil1111111111111")),
      const DropdownMenuItem(value: "England11", child: Text("England")),
    ];
    return menuItems;
  }

  List<Data> dataList = [
    Data(
        name: "Facebook",
        imageURL: 'assets/images/nemberimage.jpg',
        location: 'Bhubaneswar ,Patia'),
    Data(
        name: "Whatsapp",
        imageURL: 'assets/images/nemberimage.jpg',
        location: 'Bhubaneswar ,Patia'),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "Twitter",
        imageURL: 'assets/images/nemberimage.jpg',
        location: 'Bhubaneswar ,Patia'),
    Data(
        name: "More",
        imageURL: 'assets/images/nemberimage.jpg',
        location: 'Bhubaneswar ,Patia'),
  ];

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            controller.jumpToPage(entry.key);
            setState(() {
              _currentIndex = entry.key;
            });
          },
          child: Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Color(0xFF146ABE)
                    : Colors.white),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return Scaffold(
              backgroundColor: Colors.white,
              drawer: NavigationPage(),
              key: scaffoldKey,
              // appBar: AppBar(
              //     backgroundColor: Colors.transparent,
              //     elevation: 0,
              //     leading: IconButton(
              //         onPressed: () {
              //           if (scaffoldKey.currentState!.isDrawerOpen) {
              //             scaffoldKey.currentState!.closeDrawer();
              //             //close drawer, if drawer is open
              //           } else {
              //             scaffoldKey.currentState!.openDrawer();
              //             //open drawer, if drawer is closed
              //           }
              //         },
              //         icon: Image.asset(
              //           "assets/images/menu.png",
              //           height: 30,
              //           width: 20,
              //         )
              //         //
              //         // Icon(
              //         //   Icons.menu,
              //         //   color: Colors.grey.shade900,
              //         // ),
              //         ),
              //     title: Container(
              //       margin: EdgeInsets.symmetric(horizontal: 60),
              //       child: Image.asset("assets/images/bright.png",
              //           height: 100, width: 130),
              //     )),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        color: Colors.grey.shade300,
                        height: 90,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          margin: EdgeInsets.only(top: 40),
                          child: Row(
                            children: [
                              // Icon(
                              //   Icons.sort,
                              //   size: 30,
                              //   color: Color(0xFF4c53a5),
                              // ),
                              IconButton(
                                  onPressed: () {
                                    if (scaffoldKey
                                        .currentState!.isDrawerOpen) {
                                      scaffoldKey.currentState!.closeDrawer();
                                      //close drawer, if drawer is open
                                    } else {
                                      scaffoldKey.currentState!.openDrawer();
                                      //open drawer, if drawer is closed
                                    }
                                  },
                                  icon: Image.asset(
                                    "assets/images/menu.png",
                                    height: 30,
                                    width: 20,
                                  )
                                  //
                                  // Icon(
                                  //   Icons.menu,
                                  //   color: Colors.grey.shade900,
                                  // ),
                                  ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                child: Image.asset("assets/images/bright.png",
                                    height: 100, width: 130),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SerachPage()),);

                                  /* showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Theme(
                                        data: ThemeData(
                                            canvasColor: Colors.orange),
                                        child: AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0)),
                                          ),
                                          title: Text(
                                            'Biggest Business Directory In The World',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: cardtextcolor,
                                                fontFamily: 'Raleway'),
                                          ),
                                          content: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width,
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
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "Search your Location...",
                                                    border: InputBorder.none,
                                                    prefixIcon:
                                                        Icon(Icons.search)),
                                              ),
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('OK'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );*/
                                },
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.black54,
                                ),
                              ),
                              // Icon(
                              //   Icons.search,
                              //   size: 30,
                              //   color: Colors.black54,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          CarouselSlider.builder(
                            carouselController: controller,
                            itemCount: images.length,
                            itemBuilder: (BuildContext context, int index,
                                int realIndex) {
                              final image = images[index];
                              return Padding(
                                padding: EdgeInsets.all(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    image,
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: MediaQuery.of(context).size.height * 0.25,
                              initialPage: 0,
                              reverse: false,
                              autoPlay: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                          ),
                          Positioned(
                              left: 0,
                              right: 0,
                              bottom: 10,
                              child: buildIndicator())
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   "Biggest Business Directory In The World",
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.w700,
                      //     color: Colors.black54,
                      //   ),
                      // ),
                      SizedBox(
                        height: 5,
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Meet Our Newest Member",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: cardtextcolor,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      Container(
                        height: 260,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
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
                                height: 110,
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
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        dataList[index].name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
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
                                            "assets/images/location2.png",
                                            height: 20,
                                            width: 20,
                                            color: cardsub1textcolor,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              dataList[index].location,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: cardsubtextcolor,
                                                  fontFamily: 'Raleway'),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Featured Ads",
                          style: TextStyle(
                              fontSize: 18,
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
                          "Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: cardsubtextcolor,
                              fontFamily: GoogleFonts.raleway().fontFamily),
                        ),
                      ),
                      Container(
                        height: 360,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 15),
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
                                height: 100,
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        dataList[index].name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
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
                                            "assets/images/location2.png",
                                            height: 20,
                                            width: 20,
                                            color: cardsub1textcolor,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              dataList[index].location,
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
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: cardsub1textcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    Divider(
                                      height: 5,
                                      thickness: 0.1,
                                      color: Colors.black,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: ClipOval(
                                            child: Image.asset(
                                              dataList[index].imageURL,
                                              fit: BoxFit.cover,
                                              width: 30,
                                              height: 30,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Text(
                                            dataList[index].name,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: cardsub1textcolor,
                                                fontFamily: 'Raleway'),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/conversation.png",
                                              height: 20,
                                              width: 20,
                                              color: cardsub1textcolor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: cardsub1textcolor,
                                                    fontFamily: 'Raleway'),
                                              ),
                                            ),
                                            Spacer(),
                                            Image.asset(
                                              "assets/images/view.png",
                                              height: 20,
                                              width: 20,
                                              color: cardsub1textcolor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: cardsub1textcolor,
                                                    fontFamily: 'Raleway'),
                                              ),
                                            ),
                                            // Container(
                                            //   height: 30,
                                            //   width: 60,
                                            //   // padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                            //   decoration: BoxDecoration(
                                            //     color: Colors.blue,
                                            //     borderRadius:
                                            //         BorderRadius.circular(10),
                                            //   ),
                                            //   child: Center(
                                            //     child: Text(
                                            //       "View",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.white,
                                            //           fontFamily:'Raleway'),
                                            //     ),
                                            //   ),
                                            // )
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ));
                          },
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Latest Ads",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 15),
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
                                  height: 100,
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
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Text(
                                          dataList[index].name,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
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
                                              "assets/images/location2.png",
                                              height: 20,
                                              width: 20,
                                              color: cardsub1textcolor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width / 1.5,
                                                child: Text(
                                                  dataList[index].location,
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w400,
                                                      color: cardsubtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 5,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: ClipOval(
                                              child: Image.asset(
                                                dataList[index].imageURL,
                                                fit: BoxFit.cover,
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              dataList[index].name,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: cardtextcolor,
                                                  fontFamily: 'Raleway'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Latest Blogs",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 15),
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
                                  height: 100,
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
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        child: Text(
                                          dataList[index].name,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
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
                                              "assets/images/location2.png",
                                              height: 20,
                                              width: 20,
                                              color: cardsub1textcolor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Text(
                                                dataList[index].location,
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
                                      Divider(
                                        height: 5,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(10),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    dataList[index].imageURL,
                                                    fit: BoxFit.cover,
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                child: Text(
                                                  dataList[index].name,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                              "assets/images/thumbup.png",
                                              height: 20,
                                              width: 20,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Latest Events",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 15),
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
                                height: 100,
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
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
                                            height: 20,
                                            width: 20,
                                            color: cardsub1textcolor,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15),
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
                                      padding: EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Text(
                                        "Event name",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: cardtextcolor,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    Divider(
                                      height: 5,
                                      thickness: 0.1,
                                      color: Colors.black,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                              child: ClipOval(
                                                child: Image.asset(
                                                  dataList[index].imageURL,
                                                  fit: BoxFit.cover,
                                                  width: 30,
                                                  height: 30,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Text(
                                                dataList[index].name,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: cardtextcolor,
                                                    fontFamily: 'Raleway'),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Image.asset(
                                            "assets/images/thumbup.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}

class Data {
  String name;
  String imageURL;
  String location;

  Data({required this.name, required this.imageURL, required this.location});
}
