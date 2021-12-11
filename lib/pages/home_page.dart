import 'package:Hiyaw_Church/misc/colors.dart';
import 'package:Hiyaw_Church/widgets/app_large_text.dart';
import 'package:Hiyaw_Church/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Shop_widgets/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {

    "snorkling.png" : "Eleshadia Tv",
    "jtv.jpg" : "J Tv",
    "yougochurch.jpg" : "Yougo Church",
    "kayaking.png" : "Kadosh Studio",

  };
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = CHURCH_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Image.asset(
                  "assets/images/${post["image"]}",
                  height: double.infinity,
                )
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator:
                  CircleTabIndicator(color: AppColors.mainColor, radius: 4),
              tabs: [
                Tab(
                  text: "Geographical location.",
                ),
                Tab(
                  text: "Weekly programs.",
                ),
                Tab(
                  text: "Doctrinal standpoint",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 200,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, top: 10),
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/yougochurch.jpg"),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
              Text("there"),
              Text("bye"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(
                text: "Top Sponsors",
                size: 22,
              ),
              AppText(text: "see more", color: AppColors.textColor1),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 80,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: const EdgeInsets.only(right: 30),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/"+images.keys.elementAt(index)),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: AppText(
                          text: images.values.elementAt(index),
                          color: AppColors.textColor2,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer?0:1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer?0:categoryHeight,
                  child: categoriesScroller),
            ),
            Expanded(
                child: ListView.builder(
                    controller: controller,
                    itemCount: itemsData.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      double scale = 1.0;
                      if (topContainer > 0.5) {
                        scale = index + 0.5 - topContainer;
                        if (scale < 0) {
                          scale = 0;
                        } else if (scale > 1) {
                          scale = 1;
                        }
                      }
                      return Opacity(
                        opacity: scale,
                        child: Transform(
                          transform:  Matrix4.identity()..scale(scale,scale),
                          alignment: Alignment.bottomCenter,
                          child: Align(
                              heightFactor: 0.7,
                              alignment: Alignment.topCenter,
                              child: itemsData[index]),
                        ),
                      );
                    })),


      ])),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({ this.color,  this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}
class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({ this.color,  this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size.width / 2 - radius / 2,
        configuration.size.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();
  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Flexible(
              child: Row(
                children: <Widget>[
                  // Container(
                  //   margin: const EdgeInsets.only(left: 20, right: 20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       AppLargeText(
                  //         text: "List of churches in Addis Ababa",
                  //         size: 22,
                  //       ),
                  //       AppText(text: "see more", color: AppColors.textColor1),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 100,
                  //   margin: EdgeInsets.only(right: 20),
                  //   height: categoryHeight,
                  //   decoration: BoxDecoration(color: Colors.orange.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(12.0),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: <Widget>[
                  //         Text(
                  //           "Most\nFavorites",
                  //           style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                  //         ),
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //         Text(
                  //           "20 churchs",
                  //           style: TextStyle(fontSize: 16, color: Colors.white),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: 150,
                  //   margin: EdgeInsets.only(right: 20),
                  //   height: categoryHeight,
                  //   decoration: BoxDecoration(color: Colors.blue.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  //   child: Container(
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(12.0),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: <Widget>[
                  //           Text(
                  //             "Newest",
                  //             style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                  //           ),
                  //           SizedBox(
                  //             height: 10,
                  //           ),
                  //           Text(
                  //             "20 Items",
                  //             style: TextStyle(fontSize: 16, color: Colors.white),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: 100,
                  //   margin: EdgeInsets.only(right: 20),
                  //   height: categoryHeight,
                  //   decoration: BoxDecoration(color: Colors.lightBlueAccent.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(12.0),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: <Widget>[
                  //         Text(
                  //           "Super\nSaving",
                  //           style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                  //         ),
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //         Text(
                  //           "20 Items",
                  //           style: TextStyle(fontSize: 16, color: Colors.white),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

