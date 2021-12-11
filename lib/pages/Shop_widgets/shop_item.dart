import 'package:Hiyaw_Church/pages/Shop_widgets/shop_data.dart';
import 'package:Hiyaw_Church/pages/Shop_widgets/shop_details.dart';
import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  final int index;

  ShopItem({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShopDetails(
            index: index,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Shop_list[index].backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    Shop_list[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: new LinearGradient(
                      colors: [
                        Colors.black12,
                        Shop_list[index].backgroundColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => () {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: Hero(
                tag: Shop_list[index].image,
                child: Image.asset(
                  Shop_list[index].image,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
