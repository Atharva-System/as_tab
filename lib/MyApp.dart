import 'package:flutter/material.dart';
import 'package:as_tab/ASTabs.dart';
import 'package:as_tab/Tab1.dart';
import 'package:as_tab/Tab2.dart';
import 'package:as_tab/Tab3.dart';
import 'package:as_tab/Tab4.dart';
import 'package:as_tab/Tab5.dart';

class MyApp extends StatelessWidget {

  List<TabItem> drawerItems() {
    return [
      new TabItem("Tab1", true, tabIcon: Icons.open_with),
      new TabItem("Tab2", true, tabIcon: Icons.home),
      new TabItem("Tab3", true, tabIcon: Icons.verified_user),
      new TabItem("Tab4", true, tabIcon: Icons.video_library),
      new TabItem("Tab5", true, tabIcon: Icons.navigation),
    ];
  }

  List<Widget> pages() {
    return [
      new Tab1(),
      new Tab2(),
      new Tab3(),
      new Tab4(),
      new Tab5(),
    ];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ASTabs(pages(), drawerItems()),
    );
  }
}