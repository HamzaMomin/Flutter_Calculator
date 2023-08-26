import 'package:flutter/material.dart';
import 'button_design.dart';
import 'package:math_expressions/math_expressions.dart';
import 'output_screen.dart';
import 'Calculator_Logic/cal_logic.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  
 final CalculatorLogic calculatorLogic = CalculatorLogic();
 


void onPressed(String value) {
  setState(() {
    if (value == 'AC') {
      calculatorLogic.clearInput();
       
    } else if (value == '=') {
      String result = calculatorLogic.evaluateInput();
      calculatorLogic.clearInput();
      calculatorLogic.addToInput(result);
    } else if (value == '⌫') {
      calculatorLogic.removeLastInput();
    } else if (value == '/') { // Handle divide button
      calculatorLogic.addToInput('/'); // Add the division operator to the input
    } else {
      calculatorLogic.addToInput(value);
    }
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutputScreen(
            expression: calculatorLogic.input,
            result: calculatorLogic.result,
          ),
          // import from outputscreen

          Divider(height: 5, color: Colors.black),
          
            const SizedBox(height: 10,),
    
          // IconButtons(
          //   onIcon1: () {},
          //   onIcon2: () {},
          //   onIcon3: () {},
          // ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                value: 'AC',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color.fromARGB(255, 26, 4, 128),
              ),
              CalculatorButton(
                value: '/',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color.fromARGB(255, 26, 4, 128),
              ),
              CalculatorButton(
                value: '%',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color.fromARGB(255, 26, 4, 128),
              ),
              CalculatorButton(
                value: '⌫',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color.fromARGB(255, 26, 4, 128),
              ),
            ],
          ),
          SizedBox(height: 2), // Add spacing between button rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                value: '7',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '8',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '9',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '*',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color(0xFFE86A33),
              ), // Change this to divide
            ],
          ),
          SizedBox(height: 2), // Add spacing between button rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                value: '4',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '5',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '6',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '-',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color(0xFFE86A33),
              ),
            ],
          ),
          SizedBox(height: 2), // Add spacing between button rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                value: '1',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '2',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '3',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
              ),
              CalculatorButton(
                value: '+',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color(0xFFE86A33),
              ),
            ],
          ),
          SizedBox(height: 2), // Add spacing between button rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                value: '0',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 160,
              ),
              CalculatorButton(
                value: '.',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color(0xFFE86A33),
              ),
              CalculatorButton(
                value: '=',
                onPressed: onPressed,
                buttonHeight: 80,
                buttonWidth: 80,
                textColor: Color(0xFFE86A33),
              ),
            ],
          ),
        ],
      ),
    );
  }

  
}
