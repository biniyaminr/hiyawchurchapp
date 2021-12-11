import 'package:Hiyaw_Church/misc/colors.dart';
import 'package:Hiyaw_Church/widgets/app_large_text.dart';
import 'package:Hiyaw_Church/widgets/app_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left:0,
                right:0,
                child: Container(
                  width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/yougochurch.jpg"),
                  fit: BoxFit.cover
                )
              ),
            )),
            Positioned(
                top: 50,
                left: 20,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
              top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top:30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Hiwot Berhan Church", color: Colors.black.withOpacity(0.8),),
                          AppText(text: "+251935804541", color: AppColors.mainColor,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor,),
                          SizedBox(width: 10,),
                          AppText(text: "Kazanchis, Addis Ababa", color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) => Icon(Icons.star, color: index<gottenStars?AppColors.starColor: AppColors.textColor2,)),
                          ),
                          SizedBox(width: 10,),
                          AppText(text: "(4.0)", color: AppColors.textColor2,)
                        ],
                      ),
                      SizedBox(height: 25,),
                      AppLargeText(text: "Denomination", color: Colors.black.withOpacity(0.8), size: 20,),
                      SizedBox(height: 5,),
                      AppText(text: "Number of people in the Whole Denomination",color: AppColors.mainTextColor,),
                      SizedBox(height: 5,),
                      AppText(text: "over 3000", color: AppColors.mainColor),
                    ],
                  ),
            )),
          ],
        ),
      ),
    );
  }
}
