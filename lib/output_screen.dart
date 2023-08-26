import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutputScreen extends StatelessWidget {
  final String expression;
  final String result;

  const OutputScreen(
      {super.key,
      required this.expression,
      required this.result,
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Container(
          width: 350,
          height: 150,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xffF0F0F0), // Background color
            borderRadius: BorderRadius.circular(20), // Border radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                offset: Offset(6, 6),
                blurRadius: 10.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-6, -6),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                expression,
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff3E3E3E),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                result,
                style: GoogleFonts.quicksand(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff3E3E3E),
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
