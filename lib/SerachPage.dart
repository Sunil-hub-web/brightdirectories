import 'package:brightdirectories/custometheam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SerachPage extends StatefulWidget {
  const SerachPage({super.key});

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
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

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (BuildContext, Orientation, ScreenType) {
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
            "",
            style: TextStyle(fontSize: 16.sp, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: DropdownButtonFormField(
                          hint: Text(
                            dropdownCategory ?? "Select Category",
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: InputDecoration(
                            //  labelText: 'Choose an Country',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            // important line
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
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: DropdownButtonFormField(
                          hint: Text(
                            dropdownCategory ?? "Select Sub Category",
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: InputDecoration(
                            //  labelText: 'Choose an Country',
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            // important line
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
                          //itemHeight: null,
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
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: DropdownButtonFormField(
                          hint: Text(
                            dropdownCategory ?? "Select Sub Sub Category",
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
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   children: [
                  //
                  //   ],
                  // ),
                ],
              ),
            )
        ),
      );
    });
  }
}
