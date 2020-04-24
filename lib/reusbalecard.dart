
import 'package:flutter/material.dart';

class Reusebulecard extends StatelessWidget {
  // here we created a Constructer..
  Reusebulecard({@required this.color, this.cardview});

  Widget cardview;
  Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardview);
  }


}
