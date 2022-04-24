import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Question(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
          color: Colors.grey.shade600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
