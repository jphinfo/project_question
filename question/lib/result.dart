import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final int scoring;
  final void Function() restartQuiz;

  const ResultWidget(
    this.scoring,
    this.restartQuiz, {
    Key? key,
  }) : super(key: key);

  String get textResult {
    if (scoring < 15) {
      return "Parabéns!";
    } else if (scoring < 20) {
      return "Você é bom!";
    } else if (scoring < 25) {
      return "Excelente!";
    } else {
      return "Você é um Jedi?";
    }
  }

  String get resultFinalText {
    return "Pontuação: $scoring";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            textResult,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(5)),
        SizedBox(
          width: 500,
          height: 40,
          child: Text(
            resultFinalText,
            style: const TextStyle(
              color: Color.fromARGB(255, 68, 197, 223),
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          //style: TextButton.styleFrom(backgroundColor: Colors.white10),
          onPressed: restartQuiz,
          child: const Text(
            'Reiniciar',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
