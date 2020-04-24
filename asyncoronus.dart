
import 'dart:io';

void main()
{

  //all();
  exception();

}

void all() async
{

  m1();
  String bb=await m2();
  m3(bb);
}

void m1(){


  String abc= "hello kalka prasad";
  print(abc);
  // Synchronus programming block the code untill it will not be completed.

}

Future<String> m2() async{

  String bcd;
  Duration time=Duration(seconds: 5);
 // sleep(time);
 await Future.delayed(time,(){

    bcd="Hello cse";
    print(bcd);

  }

  );

return bcd;
}

void m3(String name)
{
  String dmc="Hello komal";
  print(dmc+"$name");

}


// Here is the some Exception Handling techinics so, here we discuss about it..

void exception()
{

int a=10;
var b='kp';
try{

  double c=a/0;
  print(c);
}
catch(e)
  {
    print(e);

  }

}