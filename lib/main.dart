import 'package:Hiyaw_Church/pages/detail_page.dart';
import 'package:Hiyaw_Church/pages/home_page.dart';
import 'package:Hiyaw_Church/pages/navpages/main_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hiyaw Church',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
    );
  }
}

