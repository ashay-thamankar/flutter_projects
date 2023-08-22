import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
        ),
        scaffoldBackgroundColor: kScaffoldColor,
      ),
      home: const SafeArea(
        child: InputPage(),
      ),
    );
  }
}
