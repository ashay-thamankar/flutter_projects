import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.text, required this.onPress});
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        padding: const EdgeInsets.only(top: 5.0),
        child: Center(
          child: Text(
            text,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
