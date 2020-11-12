import 'package:flutter/material.dart';
import 'items.dart';
import 'category_button.dart';

class ItemsPage extends StatefulWidget {
  final String itemName;
  ItemsPage({this.itemName});
  @override
  ItemsPageState createState() => ItemsPageState(itemName: itemName);
}

class ItemsPageState extends State<ItemsPage> {
  final String itemName;
  ItemsPageState({this.itemName});
  bool pressAttention = true;
  List<String> vegetablesList = [
    "طماطم",
    "خيار بلدي",
    "بطاطس",
    "بصل احمر",
    "بصل ابيض"
  ];
  List<String> vegetablesImages = [
    "vegetables_images/tomato.png",
    "vegetables_images/5yar.png",
    "vegetables_images/potato.png",
    "vegetables_images/basl_a7mr.png",
    "vegetables_images/pasl_abyad.png"
  ];
  List<String> frozenList = ["فراخ", "لحم"];
  List<String> frozenListImages = [
    "freezers_images/frak.jpg",
    "freezers_images/meat.png"
  ];
  List<int> vegetablesListPrice = [7, 5, 6, 9, 3];
  List<int> frozenListPrice = [20, 35];
  List<int> chosenListPrice = [];
  List<String> chosenList = [];
  List<String> chosenListImages = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (itemName == "فواكة و خضروات طازجة") {
        chosenList = vegetablesList;
        chosenListImages = vegetablesImages;
        chosenListPrice = vegetablesListPrice;
      } else {
        chosenList = frozenList;
        chosenListImages = frozenListImages;
        chosenListPrice = frozenListPrice;
      }
    });
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(itemName),
          backgroundColor: Colors.orange,
        ),
        body: new ListView(
          children: [
            Container(
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
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              child: Row(
                children: [
                  Icon(
                    Icons.settings_overscan,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    child: Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Expanded(child: TextField()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                //TODO ADD Category_Button
                children: [
                  CategoryButton("الكل"),
                  CategoryButton("خضار طازج"),
                  CategoryButton("فواكة طازج"),
                  CategoryButton("تمور"),
                ],
              ),
            ),
            //TODO ADD Items

            for (var i = 0; i < chosenList.length; i++)
              Items(
                itemName: chosenList[i],
                price: chosenListPrice[i],
                imageItems: chosenListImages[i],
              ),

            /////

            // Items(itemName: chosenList[0],price: chosenListPrice[0],imageItems: chosenListImages[0],),
            // Items(itemName: chosenList[1],price: chosenListPrice[1],imageItems:chosenListImages[1]),
            // Items(itemName: chosenList[2],price: chosenListPrice[2],imageItems:chosenListImages[2]),
          ],
        ),
      ),
    );
  }
}
