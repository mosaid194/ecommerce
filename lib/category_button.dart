import 'package:flutter/material.dart';
class CategoryButton extends StatefulWidget {
  final String nameCategory;
  CategoryButton(this.nameCategory);
  @override
  CategoryButtonState createState() => CategoryButtonState(nameCategory);
}

class CategoryButtonState extends State<CategoryButton> {
  final String nameCategory;
  CategoryButtonState(this.nameCategory);
  bool pressAttention = true ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
          color: pressAttention?Colors.white:Colors.blue,
          child: Text(nameCategory),
          onPressed: (){
            //
            setState(() {
              print(pressAttention);

              if (pressAttention == false) {
                pressAttention = true;
                // print(" henaa $pressAttention",);

              }
              else if(pressAttention == true){
                pressAttention = false;
                //print(" henaak  $pressAttention",);
              }

            });


            //
          }),
    );
  }
}
