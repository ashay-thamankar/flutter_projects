import 'package:flutter/material.dart';
import 'question_file.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Quizzelr(),
          ),
        ),
      ),
    );
  }
}

class Quizzelr extends StatefulWidget {
  const Quizzelr({super.key});

  @override
  State<Quizzelr> createState() => _QuizzelrState();
}

class _QuizzelrState extends State<Quizzelr> {
  checkAnswer(bool userPressed) {
    setState(() {
      if (quizBrain.isEnd() == true) {
        Alert(context: context, title: "Game Over", desc: "Play Again.").show();
        quizBrain.clearAll();
        scoreKeeper.clear();
        //alert
      } else {
        if (quizBrain.getQuestionText().questionAnswer == userPressed) {
          scoreKeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      }
    });
  }

  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBrain.getQuestionText().questionText,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            color: Colors.green,
            child: TextButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            color: Colors.red,
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
