import 'package:flutter/material.dart';

class ButtonAnwesWigget extends StatelessWidget {
  final String answeText;
  final void Function() answeQuetion;

  // ignore: use_key_in_widget_constructors
  const ButtonAnwesWigget(this.answeText, this.answeQuetion, {Key? key})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 70, 102, 144),
        ),
        onPressed: answeQuetion,
        child: Text(answeText),
      ),
    );
  }
}
