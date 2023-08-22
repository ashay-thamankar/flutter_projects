import 'dart:math';

class CalculationBrain {
  CalculationBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Overweight, Exercise more';
    } else if (_bmi > 18.5) {
      return 'Normal, Good job!';
    } else {
      return 'Underweight, Eat more.';
    }
  }
}
