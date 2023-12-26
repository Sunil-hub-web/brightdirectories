import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../custometheam.dart';

class VideoDetails extends StatefulWidget {
  const VideoDetails({super.key});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  // final chatWebViewController = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..loadRequest(Uri.parse('https://youtu.be/zOQzu3BGSqo'));
  //
  // final youtubeVideoWebViewController = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..loadRequest(Uri.parse('https://youtu.be/zOQzu3BGSqo'));

  // final WebViewController controller = WebViewController();
  var loadingPercentage = 0;
  final WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
      Uri.dataFromString('''<html>
            <head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
            <body><iframe src="https://www.youtube.com/embed/3ISVNoeoOlU" 
            title="YouTube video player" frameborder="0"></iframe></body></html>''',
          mimeType: 'text/html'),
    );

  List<String> youtubeurl = [];
  List<String> youtubeurlname = [];

  //List<Data> dataList = [];

  void dataLit() {
    youtubeurl.add("https://youtu.be/zOQzu3BGSqo");
    youtubeurl.add("https://youtu.be/Q5eseXsUU1o");
    youtubeurl.add("https://youtu.be/4GDih6ecuOE");
    youtubeurl.add("https://youtu.be/FgMX3ZuJWBQ");

    youtubeurlname.clear();

    for (int i = 0; i < youtubeurl.length; i++) {
      if (youtubeurl[i].contains("https://youtu.be/")) {
        final original = youtubeurl[i];
        final find = 'https://youtu.be/';
        final replaceWith = "";
        final newString = original.replaceAll(find, replaceWith);

        // List<Data> dataList = [
        //   Data(
        //       name: "The Grand Coupe",
        //       imageURL: newString,
        //       desc: 'Lorem Ipsum is simply dum...wwwwwwwwwwwwwwwww',
        //       date: "Jul-29-2021"),
        //   Data(
        //       name: "Attention - Charlie Puth",
        //       imageURL: newString,
        //       desc: 'test album...',
        //       date: "Jul-29-2021"),
        //   // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
        //   Data(
        //       name: "We Don't Talk Anymore",
        //       imageURL: newString,
        //       desc: 'Lorem Ipsum is simply dum...',
        //       date: "Jul-29-2021"),
        //   Data(
        //       name: "test videos",
        //       imageURL: newString,
        //       desc: 'Lorem Ipsum is simply dum...',
        //       date: "Aug-13-2021"),
        //   Data(
        //       name: "BMW",
        //       imageURL: newString,
        //       desc: 'Lorem Ipsum is simply dum...',
        //       date: "Aug-13-2021"),
        // ];
      }

      // if (youtubeurl[i].contains("https://www.youtube.com/")) {
      //   final original = youtubeurl[i];
      //   final find = "https://www.youtube.com/watch?v=";
      //   final replaceWith = "";
      //   final newString = original.replaceAll(find, replaceWith);
      // }

      print("userdatalist $youtubeurlname");

      setState(() {});
    }
  }

  List<Data> dataList = [
    Data(
        name: "The Grand Coupe",
        imageURL: "zOQzu3BGSqo",
        desc: 'Lorem Ipsum is simply dum...wwwwwwwwwwwwwwwww',
        date: "Jul-29-2021"),
    Data(
        name: "Attention - Charlie Puth",
        imageURL: "Q5eseXsUU1o",
        desc: 'test album...',
        date: "Jul-29-2021"),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(
        name: "We Don't Talk Anymore",
        imageURL: "4GDih6ecuOE",
        desc: 'Lorem Ipsum is simply dum...',
        date: "Jul-29-2021"),
    Data(
        name: "test videos",
        imageURL: "FgMX3ZuJWBQ",
        desc: 'Lorem Ipsum is simply dum...',
        date: "Aug-13-2021"),
    Data(
        name: "BMW",
        imageURL: "zOQzu3BGSqo",
        desc: 'Lorem Ipsum is simply dum...',
        date: "Aug-13-2021"),
  ];

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

  @override
  void initState() {
    super.initState();

    dataLit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardbgcolor,
        centerTitle: true,
        title: Text(
          "Videos",
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
        builder: (BuildContext, Orientation, ScreenType) {
          return Container(
              height: 100.h,
              width: 100.h,
              child: Container(
                child: SafeArea(
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
                                          crossAxisCount: 1,
                                          childAspectRatio: 1,
                                          crossAxisSpacing: 7,
                                          mainAxisSpacing: 7,
                                          mainAxisExtent: 330),
                                  itemBuilder: (context, index) {
                                    final WebViewController controller =
                                        WebViewController()
                                          ..setJavaScriptMode(
                                              JavaScriptMode.unrestricted)
                                          ..loadRequest(
                                            Uri.dataFromString('''<html>
                          <head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
                          <body><iframe src="https://www.youtube.com/embed/${dataList[index].imageURL}" 
                           title="YouTube video player" frameborder="0"></iframe></body></html>''',
                                                mimeType: 'text/html'),
                                          );
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                          child: Card(
                                        elevation: 5,
                                        shadowColor: cardbgcolor,
                                        color: cardbgcolor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [

                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    decoration:
                                                        new BoxDecoration(
                                                            color:
                                                                Color(0xfff8f9fa)),
                                                    alignment: Alignment.center,
                                                    child: ClipRRect(
                                                        child: Container(
                                                            height: 20.h,
                                                            child: WebViewWidget(
                                                                controller:
                                                                    controller))),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10, right: 10),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        margin: const EdgeInsets
                                                            .all(1),
                                                        decoration:
                                                            BoxDecoration(
                                                                gradient:
                                                                    const LinearGradient(
                                                                  begin: Alignment
                                                                      .topRight,
                                                                  end: Alignment
                                                                      .bottomLeft,
                                                                  colors: [
                                                                    Color(
                                                                        0xFF605e7e),
                                                                    Color(
                                                                        0xFF605e7e),
                                                                  ],
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
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
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  dataList[index].name,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: cardtextcolor,
                                                      fontFamily: 'Raleway'),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  dataList[index].desc,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: cardsubtextcolor,
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
                                              Row(
                                                children: [
                                                      Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      top: 5,
                                                      bottom: 5),
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
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 15),
                                                        child: Text(
                                                          dataList[index].date,
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              color:
                                                                  cardsubtextcolor,
                                                              fontFamily:
                                                                  'Raleway'),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                  Spacer(),
                                                   Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: 30,
                                                  width: 27.w,
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
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "View More",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white,
                                                          fontFamily:
                                                              'Raleway'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                                ],
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
                    )),
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
              'Video Search',
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
                              hintText: "Photo Album Name",
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

class Data {
  String name;
  String imageURL;
  String desc;
  String date;

  Data({
    required this.name,
    required this.imageURL,
    required this.desc,
    required this.date,
  });
}
