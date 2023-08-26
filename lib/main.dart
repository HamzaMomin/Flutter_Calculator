import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
                //checn screen is in portrait or landscape
      home:  CalculatorScreen()
    );
  }
}

  //future scentific landscape mode, currenlty screen errors.

// OrientationBuilder(
//         builder: (context , orientation) 
//         {
//           if(orientation == Orientation.portrait){
//             return CalculatorScreen();
//           }
//           else{            //landscape
//             return const ScientificScreen();
//           }
//         }
      
//       ,)