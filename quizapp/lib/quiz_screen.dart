import 'package:flutter/material.dart';
import './score_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> questions = [
    'What the sound of the dog?',
    'Why type of fish is Nemo?',
    'How many colors are there in a rainbow?',
    'Best instructor in Coding?',
    'What is Love?',
    'How many subject take this year?',
    'Are you Taken?',
    'Favorite Jersey? ',
    'Salad is the best desert in Christmas?',
    'What is the name of the biggest technology company in South Korea?'
  ];

  List options = [
    ['Arf', 'meow', 'mwuaah', 'uwuu'],
    ['Clownfish', 'Danios', 'Nemo', 'Slark'],
    ['9', '7', '5', '8'],
    ['Sir Arnie', 'Sir Mike', 'Sir Joshua', 'Sir Paul'],
    ['IV spades', 'Twice', 'Parokya ni Edgar', 'Ed sheeran'],
    ['2', '7', '4', '9'],
    ['No', 'Yes', 'Maybe', 'Soon'],
    ['32', '19', '23', '10'],
    ['yes', 'no', 'exactly', 'maybe'],
    ['LG', 'ASUS', 'LAZADA', 'Samsung'],
  ];
  List<String> answers = [
    'Arf',
    'Clownfish',
    '7',
    'Sir Arnie',
    'Twice',
    '7',
    'No',
    '23',
    'exactly',
    'Samsung',
  ];
  int currentIndex = 0;
  int userScore = 0;
  bool showScore = false;

  void checkAnswer(String userAnswer) {
    if (userAnswer == answers[currentIndex]) {
      userScore++;
    }
    setState(() {
      //3 < 4 true
      if (currentIndex < questions.length - 1) {
        currentIndex++;
      } else {
        showScore = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print('currentIndex: $currentIndex \n score: $userScore');
    return showScore
        ? ScoreScreen(
            score: userScore,
          )
        : Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Quiz App'),
            ),
            body: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),

              // color: Colors.amber,
              // width: 200,
              child: Column(
                children: [
                  Text(
                    questions[currentIndex],
                    textAlign: TextAlign.center,
                    style: TextStyle(

                        // color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  // margin: EdgeInsets.only(top: 12),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          checkAnswer(options[currentIndex][0]), // = > =>
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'A) ${options[currentIndex][0]}',
                        ),
                      ),
                    ),
                  ),

                  Container(
                    // margin: EdgeInsets.only(top: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          checkAnswer(options[currentIndex][1]), // = > =>
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('B) ${options[currentIndex][1]}'),
                      ),
                    ),
                  ),

                  Container(
                    // margin: EdgeInsets.only(top: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          checkAnswer(options[currentIndex][2]), // = > =>
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('C) ${options[currentIndex][2]}'),
                      ),
                    ),
                  ),

                  Container(
                    // margin: EdgeInsets.only(top: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          checkAnswer(options[currentIndex][3]), // = > =>
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('D) ${options[currentIndex][3]}'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
