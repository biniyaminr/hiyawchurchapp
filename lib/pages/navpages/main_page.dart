import 'package:Hiyaw_Church/pages/Shop_widgets/home.dart';
import 'package:Hiyaw_Church/pages/News_widgets/news_pages.dart';
import 'package:Hiyaw_Church/pages/Shop_widgets/shop_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home_page.dart';
import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    WorldSection(),
    HomeScreen(),
    MyPage(),

  ];
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: FlatButton(
          onPressed: () {},
          child: Container(
            child: Image.asset("assets/images/menu.png"),
          ),
        ),
        title: Center(
          child: Text(
            "Hiyaw church",
            style: TextStyle(
              fontFamily: "Sigmar",
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: SvgPicture.asset(
              "assets/images/search.svg",
              height: 25,
              width: 25,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(title: Text("News"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(title: Text("Shop"), icon: Icon(Icons.shop)),
          BottomNavigationBarItem(title: Text("My"), icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
