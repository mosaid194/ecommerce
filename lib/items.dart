import 'package:flutter/material.dart';
import 'item_details.dart';

class Items extends StatefulWidget {
  final String itemName;
  final int price;

  final String imageItems;

  Items({this.itemName, this.price, this.imageItems});

  @override
  ItemsState createState() =>
      ItemsState(itemName: itemName, price: price, imageItems: imageItems);
}

class ItemsState extends State<Items> {
  final String itemName;
  final int price;

  final String imageItems;

  ItemsState({this.itemName, this.price, this.imageItems});

  int addNumber = 0;
  TextStyle itemsFonts = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  bool favoriteIcon = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ItemDetalis(
                    pageName: itemName,
                    price: price,
                    itemImage: imageItems,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            child: Icon(
                          favoriteIcon ? Icons.favorite_border_sharp : Icons.favorite,
                          color: Colors.red,
                        ),
                          onTap: (){
                              setState(() {
                                if(favoriteIcon == true)
                                  {
                                    favoriteIcon =false;
                                  }
                                else{
                                  favoriteIcon =true;
                                }
                              });
                          },
                        ),
                        Text(
                          itemName,
                          textAlign: TextAlign.right,
                          style: itemsFonts,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 12,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (addNumber != 0) {
                                addNumber = addNumber - 1;
                              }
                            });
                          },
                        ),
                        Text(
                          "$addNumber",
                          style: itemsFonts,
                        ),
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 12,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              addNumber = addNumber + 1;
                            });
                          },
                        ),
                        Text(
                          "$price ج م",
                          textAlign: TextAlign.right,
                          style: itemsFonts,
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(imageItems),
                radius: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
