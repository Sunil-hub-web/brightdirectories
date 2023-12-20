import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarLayout extends StatefulWidget {
  const TabBarLayout({super.key});

  @override
  State<TabBarLayout> createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              // Add Tabs here
            ],
          ),
          title: const Text('Woolha.com Flutter Tutorial'),
          backgroundColor: Colors.teal,
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            // Add widgets here
          ],
        ),
      ),
    ),
  );
  }
}
