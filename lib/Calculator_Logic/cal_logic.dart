import 'package:math_expressions/math_expressions.dart';

class CalculatorLogic {
  String _input = '';
  String _result = '';


  Parser parser = Parser();
  ContextModel contextModel = ContextModel();

  String get result => _result;
  String get input => _input;



  
String evaluateInput() {
  try {
    Parser p = Parser();
    Expression exp = p.parse(_input);
    ContextModel cm = ContextModel();
    double evalResult = exp.evaluate(EvaluationType.REAL, cm);

    // Use 2 decimal places if the result is not a whole number
    if (evalResult != evalResult.toInt()) {
      _result = evalResult.toStringAsFixed(2);
    } else {
      _result = evalResult.toInt().toString();
    }
    return _result;
  } catch (e) {
    _result = 'Error';
    return _result;
  }
}


  void addToInput(String value) {
    _input += value;
  }

  void clearInput() {
    _input = '';
   
  }

  void removeLastInput() {
    if (_input.isNotEmpty) {
      _input = _input.substring(0, _input.length - 1);
    }
  }

   void handleDivide() {
    addToInput('/');
  }

 

}

