import 'dart:math';
class CalculatorBrain{


  CalculatorBrain({this.weight,this.hight});
  final int hight;
  final int weight;
  double _bmi;


  String calculatebmi()
  {
  _bmi=weight / pow(hight/100, 2);
   return _bmi.toStringAsFixed(1);


  }
  String getresult()
  {
    if(_bmi>=25)
      {
        return 'OverWeight';
      } else if(_bmi>18.5)
        {
          return 'normal';
        }else{
      return "underWeight";
    }
  }
  String getInterpretation()
  {
    if(_bmi>=25)
    {
      return 'You have a higher than normal body weight .Try to exercise more.';
    } else if(_bmi>18.5)
    {
      return 'You have a normal body weight.Good Job';
    }else{
      return "You have a lower than normal body weight . you  should be eat more bit.";
    }
  }
}