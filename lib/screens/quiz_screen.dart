import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'What is the capital of France?',
      'answers': ['Berlin', 'Madrid', 'Paris', 'Rome'],
      'correctAnswer': 2,
    },
    {
      'question': 'What is 2 + 2?',
      'answers': ['3', '4', '5', '6'],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the largest planet in our solar system?',
      'answers': ['Earth', 'Jupiter', 'Saturn', 'Mars'],
      'correctAnswer': 1,
    },
  ];
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(int selectedIndex) {
    if (selectedIndex == _questions[_questionIndex]['correctAnswer']) {
      _score++;
    }
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')), 
      body: _questionIndex < _questions.length
          ? Column(
              children: <Widget>[
                Text(
                  _questions[_questionIndex]['question'],
                  style: TextStyle(fontSize: 28),
                ),
                ..._questions[_questionIndex]['answers']
                    .asMap()
                    .entries
                    .map((entry) {
                  return ElevatedButton(
                    onPressed: () => _answerQuestion(entry.key),
                    child: Text(entry.value),
                  );
                }).toList(),
              ],
            )
          : Center(
              child: Text(
                'Your score: $_score/${_questions.length}',
                style: TextStyle(fontSize: 24),
              ),
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: QuizScreen(),
  ));
}