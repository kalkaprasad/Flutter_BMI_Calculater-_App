import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_bmi_calculater/main.dart';
import 'package:my_bmi_calculater/reusbalecard.dart';

import 'Bottomcard.dart';


class result extends StatelessWidget {
  result({@required this.bmiResult,@required this.resultText,@required this.interpreter});

  final String bmiResult;
  final String resultText;
  final String interpreter;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculater",
      theme: ThemeData(
        primaryColor: Color(0xff2A3A50),
        scaffoldBackgroundColor: Color(0xff2A3A50),
      ),
      home: resultdata(bmiRs: bmiResult,bmiRsTxt: resultText,Intrp: interpreter),
    );
  }
}

class resultdata extends StatefulWidget {
  resultdata({this.bmiRs,this.bmiRsTxt,this.Intrp});

  String bmiRs;
  String bmiRsTxt;
  String Intrp;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _resultdata(kp1: bmiRs,kp2: bmiRsTxt,kp3: Intrp);
  }
}

class _resultdata extends State<resultdata> {
  _resultdata({this.kp1,this.kp2,this.kp3});
  String kp1;
String kp2;
String kp3;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("BMI Calculater"),
          elevation: 25.0,
          centerTitle: true,
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: new Container(
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Reusebulecard(
                color: Colors.black54,
                cardview: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      kp2,
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                    new Text(
                      kp1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    new Text(
                      kp3,
                      style: TextStyle(color: Colors.white, fontSize: 19.0,fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            new bottombar(
              title: "RE-CALCULATE",
              ontap: ()
              {
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>bmc()));
                   //     Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bmc()));
                       // Navigator.pop(context);
                print("You Again Clicked");
              },
            )
          ],
        ));
  }
}
