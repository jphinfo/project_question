import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectionQuestion = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Qual é sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'score': 2},
        {'text': 'Vermelho', 'score': 7},
        {'text': 'Verde', 'score': 9},
        {'text': 'Branco', 'score': 6},
      ],
    },
    {
      'text': 'Qual é seu animal favorito?',
      'answers': [
        {'text': 'Coelho', 'score': 8},
        {'text': 'Cobra', 'score': 5},
        {'text': 'Elefante', 'score': 10},
        {'text': 'Leão', 'score': 1},
      ],
    },
    {
      'text': 'Qual é seu instrutor favorito?',
      'answers': [
        {'text': 'Maria', 'score': 9},
        {'text': 'João', 'score': 6},
        {'text': 'Leo', 'score': 7},
        {'text': 'Pedro', 'score': 10},
      ]
    }
  ];

  void answe(int score) {
    if (haveQuestionSelected) {
      setState(() {
        _selectionQuestion++;
        _totalScore += score;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectionQuestion = 0;
      _totalScore = 0;
    });
  }

  bool get haveQuestionSelected {
    return _selectionQuestion < _questions.length;
  }

  static const String _title = 'Perguntas';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 36, 82, 142),
          /*         title: const Text('Perguntas'), */
        ),
        body: haveQuestionSelected
            ? QuizWidget(
                questions: _questions,
                selectionQuestion: _selectionQuestion,
                answe: answe,
              )
            : ResultWidget(_totalScore, _restartQuiz),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({Key? key}) : super(key: key);

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
