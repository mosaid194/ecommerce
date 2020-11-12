import 'package:flutter/material.dart';
import 'items_page.dart';

class VarietiesBox extends StatelessWidget {
  VarietiesBox({this.typeName, this.typeImage});
  final String typeName;
  final String typeImage;

  TextStyle varietiesFont = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ItemsPage(
                    itemName: typeName,
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
          children: [
            Text(
              typeName,
              style: varietiesFont,
            ),
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              backgroundImage: AssetImage(typeImage),
            ),
          ],
        ),
      ),
    );
  }
}
