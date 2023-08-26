import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatefulWidget {
  final String value;
  final Function onPressed;
  final double buttonWidth;
  final double buttonHeight;
  final Color textColor;


  const CalculatorButton({super.key, 
    required this.value,
    required this.onPressed,
    this.buttonHeight = 80, // buttons height and width for all excpet ICON buttons.
    this.buttonWidth = 80,
    this.textColor = Colors.black,
   
  });

  @override
  _CalculatorButtonState createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.buttonWidth,
      height: widget.buttonHeight,
      child: Padding(
        padding: EdgeInsets.all(8.0), // Adjust the padding for spacing
        child: GestureDetector(
           onTap: () {
            setState(() {
              _isPressed = !_isPressed; // Toggle the pressed state
              widget.onPressed(widget.value); // Call the onPressed callback
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            child: Container(
              
              decoration: BoxDecoration(
                color: _isPressed ? Color(0xffFF9B9B) : Color(0xffFFCACC), // Button color
                borderRadius: BorderRadius.circular(15), // Button border
                boxShadow: [
                  BoxShadow(
                    color: _isPressed ? Colors.white : Colors.grey[300]!, // Lighter shadow color
                    offset:  Offset(_isPressed ? -5 : 10, _isPressed ? -5 : 10),
                    blurRadius: 10.0,
                  ),
                  BoxShadow(
                    color: _isPressed ? Colors.grey[300]! : Colors.white, // White shadow color
                    offset:  Offset(_isPressed ? 5 : -10, _isPressed ? 5 : -10),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  widget.value,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    color: widget.textColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
