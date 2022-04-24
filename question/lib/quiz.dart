import 'package:flutter/material.dart';
import 'question.dart';
import 'componets.dart';

class QuizWidget extends StatelessWidget {
  bool get haveQuestionSelected {
    return selectionQuestion < questions.length;
  }

  final List<Map<String, Object>> questions;
  final int selectionQuestion;
  final void Function(int) answe;

  const QuizWidget({
    required this.questions,
    required this.selectionQuestion,
    required this.answe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveQuestionSelected
        ? questions[selectionQuestion].cast()['answers']
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectionQuestion]['text'].toString()),
        ...answers.map((question) {
          return ButtonAnwesWigget(
            question['text'].toString(),
            () => answe(int.parse(question['score'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
