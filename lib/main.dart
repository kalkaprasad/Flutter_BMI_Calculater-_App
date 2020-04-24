import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi_calculater/resultpages/resultpage.dart';
import 'package:my_bmi_calculater/reusbalecard.dart';
import 'package:my_bmi_calculater/resultpages/calculaterBrain.dart';

import 'constvalue.dart';
import 'iconsdata.dart';

void main() {
  runApp(bmc());
}

const bootohight = 80.0;

const bootomcolor = Color(0xffEB1555);

const activecolor = Color(0xff232325); //
const inactivecolor = Color(0xff000B18);

enum Gender {
  male,
  female,
}

class bmc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "BMI Calculater",
      theme: ThemeData(
        primaryColor: Color(0xff2A3A50),
        scaffoldBackgroundColor: Color(0xff2A3A50),
      ),
      color: Colors.purple,
      debugShowCheckedModeBanner: false,
      home: MyBMI(),
    );
  }
}

class MyBMI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myinput();
  }
}

class myinput extends State<MyBMI> {
  Color malecardcolor = inactivecolor;
  Color femalecardcolor = inactivecolor;
  int height = 180;
  int weight = 80;
  int age = 20;

  void updatecolor(Gender selectedgender) {
    if (selectedgender == Gender.male) {
      if (malecardcolor == inactivecolor) {
        malecardcolor = activecolor;
      } else {
        malecardcolor = inactivecolor;
      }
    }
    if (selectedgender == Gender.female) {
      if (femalecardcolor == inactivecolor) {
        femalecardcolor = activecolor;
      } else {
        femalecardcolor = inactivecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          elevation: 20.0,
          title: Text("BMI Calculater"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      print("Card are clicked");
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                    child: Reusebulecard(
                      color: malecardcolor,
                      cardview: icondsdata(
                        iconvalue: FontAwesomeIcons.mars,
                        label: "male",
                      ),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("Female card care clicked");
                        setState(() {
                          updatecolor(Gender.female);
                        });
                      },
                      child: Reusebulecard(
                        color: femalecardcolor,
                        cardview: icondsdata(
                          iconvalue: FontAwesomeIcons.venus,
                          label: "Female",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reusebulecard(
                color: Color(0xff000B18),
                cardview: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: labeltext),
                        Text('CM', style: cmtext),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.white,
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xffEB1555),
                          overlayColor: Colors.grey,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        inactiveColor: Colors.red,
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          print(newvalue);
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Reusebulecard(
                      color: Color(0xff000B18),
                      cardview: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "WEIGHT",
                            style: TextStyle(color: Colors.grey),
                          ),
                          new Text(weight.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w800)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new RoundiconButton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                    if (weight < 0) {
                                      weight = 0;
                                    }
                                  });
                                  print("Clicked");
                                },
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              new RoundiconButton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                  print("clicked");
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Reusebulecard(
                      color: Color(0xff000B18),
                      cardview: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "AGE",
                            style: TextStyle(color: Colors.grey),
                          ),
                          new Text(age.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w800)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new RoundiconButton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    age--;
                                    if (age < 0) {
                                      age = 0;
                                    }
                                  });
                                  print("clicked");
                                },
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              new RoundiconButton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                  print("onclicked");
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
// this is the bottom  container code
            new Container(
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bootohight,
                child: GestureDetector(
                  onTap: () {

                    // here we call the our method for the calulate Bmi
                    CalculatorBrain calc= CalculatorBrain(hight:height ,weight:weight );
                    calc.calculatebmi();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => result(
                          bmiResult: calc.calculatebmi(),
                          interpreter: calc.getInterpretation(),
                          resultText:calc.getresult(),
                        )));
                    print("clicked here");
                  },
                  child: Center(
                      child: new Text("CALCULATE YOUR BMI",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700))),
                ),
                color: bootomcolor),
          ],
        ));
  }
}

class RoundiconButton extends StatelessWidget {
  RoundiconButton({this.icon, this.onpressed});

  IconData icon;
  Function onpressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      fillColor: Color(0xff232325),
    );
  }
}
