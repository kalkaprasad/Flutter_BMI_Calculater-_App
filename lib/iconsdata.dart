
import 'package:flutter/material.dart';
class icondsdata extends StatelessWidget{
  icondsdata({this.iconvalue,this.label});
  IconData iconvalue;
  String label;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          iconvalue,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        new Text(
          label,
          style:
          TextStyle(fontSize: 18.0, color: Colors.grey),
        )
      ],
    );
  }


}
