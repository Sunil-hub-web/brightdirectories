import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../custometheam.dart';

class SearchMember extends StatefulWidget {
  const SearchMember({super.key});

  @override
  State<SearchMember> createState() => _SearchMemberState();
}

class _SearchMemberState extends State<SearchMember> {
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
      name: "CHRISTOS ACAROS",
      imageURL: 'assets/images/nemberimage.jpg',
      companyname: 'Nautilus Services Ltd',
      location: "LIMASSOL, CA, Afghanistan",
    ),
    Data(
      name: "CHRISTOS ACAROS",
      imageURL: 'assets/images/nemberimage.jpg',
      companyname: 'Nautilus Services Ltd',
      location: "LIMASSOL, CA, Afghanistan",
    ),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
      name: "CHRISTOS ACAROS",
      imageURL: 'assets/images/nemberimage.jpg',
      companyname: 'Nautilus Services Ltd',
      location: "LIMASSOL, CA, Afghanistan",
    ),
    Data(
      name: "CHRISTOS ACAROS",
      imageURL: 'assets/images/nemberimage.jpg',
      companyname: 'Nautilus Services Ltd',
      location: "LIMASSOL, CA, Afghanistan",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
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
              "Member Listing",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            elevation: 0.5,
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                 /* Container(
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
                            hintText: "Search your Location...",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search)),
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
                          borderSide:
                              BorderSide(color: Color(0xFFDDE4E4), width: 1.0),
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
                      value:
                          dropdownCategory == "" ? "Country" : dropdownCategory,
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
                      )),*/
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Expanded(
                      child: GridView.builder(
                        itemCount: dataList.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: 7,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                                child: Card(
                              elevation: 5,
                              shadowColor: cardbgcolor,
                              color: cardbgcolor,
                              margin: EdgeInsets.all(8),
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

                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 30,
                                        width: 120,
                                        padding: EdgeInsets.only(
                                            left: 5, top: 5, bottom: 5),
                                        margin: EdgeInsets.only(
                                            left: 10,
                                            top: 10,
                                            bottom: 5,
                                            right: 10),
                                        decoration: BoxDecoration(
                                          color: cardclickcolor,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontFamily: 'Raleway'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 5,
                                      thickness: 0.1,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: 10,),
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
                                            width: MediaQuery.of(context).size.width / 3,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Text(
                                                dataList[index].location,
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: cardsubtextcolor,
                                                    fontFamily: 'Raleway'),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          );
                        },
                      ),

                      /*GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    //physics:NeverScrollableScrollPhysics(),
                    // controller: ScrollController(
                    //     keepScrollOffset: true),
                    // shrinkWrap: false,
                    // scrollDirection: Axis.vertical,
                    children: widgetList.map((String value) {
                      //print("____________value____________");
                      // print("value: "+value);
                      //  print("value: "+widgetList.length.toString());

                      bool checked = widgetList.indexOf(value) == checkedIndex_s;
                      return GestureDetector(
                          onTap: () {
                            print("$value is clicked");
                            itemList.add(widgetList.indexOf(value));
                            print(itemList.toString());

                            setState(
                              () {
                                isActive_s = true;
                                int index = widgetList.indexOf(value);
                                // print("index is " + index.toString());
                                checkedIndex_s = index;

                                // if (isActive_s) {
                                //   selectedList.add(itemList[index]);
                                //
                                // } else {
                                //   selectedList.remove(itemList[index]);
                                //
                                // }
                              },
                            );

                            //Get.toNamed(RouteHelper.getpackageBookingpage());
                          },
                          child: Container(
                            child: Card(
                              shadowColor: Colors.black26,  // Change this
                              color: checked ? Colors.white30 : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.size12),
                              ),
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: Dimensions.size130,
                                              //top: Dimensions.size100
                                            ),
                                            child: const Icon(
                                              Icons.verified,
                                              color: Colors.white,
                                              size: 20,
                                              // color: Theme.of(context).primarySwatch,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: Image(
                                          image: checked ? AssetImage(icon_white[ widgetList.indexOf(value)])
                                              : AssetImage(icon_black[ widgetList.indexOf(value)]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.size1,
                                    ),
                                    Text(
                                      value,
                                      style: TextStyle(
                                        fontSize: Dimensions.size12,
                                        color: checked
                                            ? Colors.white
                                            : Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                    }).toList(),
                  ),*/
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
              'Biggest Business Directory In The World',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: cardtextcolor,
                  fontFamily: 'Raleway'),
            ),
            content: Column(
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
                          hintText: "Search your Location...",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)),
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
                        borderSide:
                        BorderSide(color: Color(0xFFDDE4E4), width: 1.0),
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
                    value:
                    dropdownCategory == "" ? "Country" : dropdownCategory,
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

  Data({
    required this.name,
    required this.imageURL,
    required this.companyname,
    required this.location,
  });
}
