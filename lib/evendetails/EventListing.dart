import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../custometheam.dart';

class EventListing extends StatefulWidget {
  const EventListing({super.key});

  @override
  State<EventListing> createState() => _EventListingState();
}

class _EventListingState extends State<EventListing> {
  String? dropdownCategory;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardbgcolor,
        centerTitle: true,
        title: Text(
          "Event Listing",
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
          return SafeArea(
              top: true,
              minimum: EdgeInsets.all(5),
              bottom: true,
              child: Card(
                elevation: 10,
                shadowColor: cardbgcolor,
                color: cardbgcolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 100.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: GridView.builder(
                            itemCount: dataList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.6,
                                    crossAxisSpacing: 7,
                                    mainAxisSpacing: 7,
                                    mainAxisExtent: 340),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ));
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
              'Event Search',
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
                      margin: EdgeInsets.all(10),
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
                              hintText: "Event Name",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5)
                              // prefixIcon: Icon(Icons.search)
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: DropdownButtonFormField(
                        hint: Text(
                          dropdownCategory ?? "Select Category",
                          style: TextStyle(fontSize: 12),
                        ),
                        decoration: InputDecoration(
                          //  labelText: 'Choose an Country',
                          isDense: true,
                          // important line
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFDDE4E4), width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDDE4E4),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        // validator: (value) => value == null
                        //     ? "Select a country"
                        //     : null,
                        dropdownColor: Colors.white,
                        value: dropdownCategory == ""
                            ? "Country"
                            : dropdownCategory,
                        isExpanded: true,
                        itemHeight: null,
                        items: dropdownItems,
                        isDense: true,

                        // items: _userModel?.map<DropdownMenuItem<String>>(
                        //     (CountriesResponse country) {
                        //   return DropdownMenuItem<String>(
                        //     value: country.name!,
                        //     child: Text(
                        //       country.name!,
                        //       style: TextStyle(fontSize: 15.sp),
                        //       overflow: TextOverflow.ellipsis,
                        //     ),
                        //   );
                        // }).toList(),
                        onChanged: (newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.all(10),
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
                              hintText: "Search Location(Optional)...",
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 5,
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date Range",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.all(10),
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
                              hintText: "Start date",
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.calendar_today_sharp,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.all(10),
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
                              hintText: "End date",
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.calendar_today_sharp,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
