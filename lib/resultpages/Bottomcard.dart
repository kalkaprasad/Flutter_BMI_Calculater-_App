
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bootohight = 80.0;

const bootomcolor = Color(0xffEB1555);
class bottombar extends StatelessWidget{
  bottombar({this.title,this.ontap});
  Function ontap;
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   new Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bootohight,
        child: GestureDetector(
          onTap: () {
           ontap();
          },
          child: Center(
              child: new Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700))),
        ),
        color: bootomcolor);
  }


}