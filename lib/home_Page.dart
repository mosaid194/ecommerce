import 'package:flutter/material.dart';
import 'varieties_market.dart';
import 'items.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("التصنيفات"),
        ),
        body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ماركت Spendless",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "التوصيل مجاني للأوردر أكبر من ٥٠٠ جنية ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            VarietiesBox(
              typeImage: "varieties_images/1.jpg",
              typeName: "فواكة و خضروات طازجة",
            ),
            VarietiesBox(
              typeName: "مجمدات",
              typeImage: "varieties_images/3.jpg",
            ),
            VarietiesBox(
              typeName: " حليب و اجبان ومشتقاتة",
              typeImage: "varieties_images/milke.jpg",
            ),
            VarietiesBox(
              typeName: " معلبات",
              typeImage: "varieties_images/mo3lbat.png",
            ),
            VarietiesBox(
              typeName: "مشروبات",
              typeImage: "varieties_images/mashrobat.png",
            ),
            VarietiesBox(
              typeName: "حلويات و تسالي",
              typeImage: "varieties_images/tsaly.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
