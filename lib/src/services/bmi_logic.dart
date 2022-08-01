import 'dart:math';

class BMILogic{
  int height;
  int weight;

  BMILogic({required this.height, required this.weight});

  double? bmi;

  String calculateBMI(){
    bmi = weight / pow(height / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi! >= 25){
      return 'OVERWEIGHT';
    }
    else if(bmi! >= 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if(bmi! >= 25){
      return 'You have a higher then normal body weight. Try to exercise more. \n';
    }
    else if(bmi! >= 18.5){
      return 'You have a normal body weight. Good job!';
    }
    else{
      return 'You have a lower then normal body weight. You can eat a bit more.';
    }
  }
}