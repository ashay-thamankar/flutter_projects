import 'package:bmi_calculator_practice_first/constants.dart';
import 'package:bmi_calculator_practice_first/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_container.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.interpretation,
      required this.resultText,
      required this.bmiResult});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI Calculator',
            style: kTitleTextStyle,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50.0, color: kIconContentColor),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult.toString(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomContainer(
                text: 'Re-Calculate',
                onPress: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
