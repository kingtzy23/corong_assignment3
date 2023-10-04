import 'package:flutter/material.dart';
import './quiz_screen.dart';

class ScoreScreen extends StatefulWidget {
  ScoreScreen({super.key, required this.score});

  int score = 0;
  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  bool returnquiz = false;
  void returnQuiz() {
    setState(() {
      returnquiz = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return returnquiz
        ? QuizScreen()
        : Scaffold(
            body: SafeArea(
              child: Container(
                // color: Colors.amber,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (widget.score <= 5)
                      Text(
                        'You Failed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w500,
                            color: widget.score <= 5 ? Colors.red : Colors.red),
                      ),
                    if (widget.score > 5 && widget.score <= 8)
                      Text(
                        'Thats good',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w500,
                            color: widget.score > 5 && widget.score <= 8
                                ? Colors.green
                                : Colors.red),
                      ),
                    if (widget.score > 8 && widget.score == 10)
                      Text(
                        'Perfect',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w500,
                            color: widget.score > 8 && widget.score == 10
                                ? Colors.black
                                : Colors.red),
                      ),
                    Text(
                      '${widget.score}/10',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w700,
                          color: widget.score >= 3 ? Colors.green : Colors.red),
                    ),
                    ElevatedButton(
                      onPressed: () => returnQuiz(),
                      child:
                          Icon(Icons.repeat, color: Colors.white, size: 50.0),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
