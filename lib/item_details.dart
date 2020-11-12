import 'package:flutter/material.dart';
import 'items.dart';

class ItemDetalis extends StatefulWidget {
   final String pageName;
   final int price;
   final String itemImage;
  ItemDetalis({this.pageName,this.price,this.itemImage});
  @override
  ItemDetalisState createState() => ItemDetalisState(pageName: pageName,price: price,itemImage: itemImage);
}

class ItemDetalisState extends State<ItemDetalis> {
  final String itemImage;
  final String pageName;
  final int price;
  ItemDetalisState({this.pageName,this.price,this.itemImage});
  TextStyle itemsFonts = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  int pagePrice = 0;
  int addQuantity = 0;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(pageName),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.transparent,
                child: Image.asset(itemImage),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "$pageName  - ١كم",
                          textAlign: TextAlign.right,
                          style: itemsFonts,
                        ),
                        Text(
                          "$pageName - ١كم",
                          textAlign: TextAlign.right,
                          style: itemsFonts,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.orange,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          addQuantity = addQuantity + 1;
                          pagePrice = pagePrice + price;
                        });
                      }),
                  Text(
                    "$addQuantity",
                    style: itemsFonts,
                  ),
                  RaisedButton(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.orange,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          if(addQuantity!=0)
                            {
                              addQuantity = addQuantity -1;
                              pagePrice = pagePrice - price;
                            }
                        });
                      }),
                ],
              ),
              Text(
                "$pagePrice ج م",
                style: itemsFonts,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
