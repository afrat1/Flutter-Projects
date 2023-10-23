import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,{super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white, // Change the text color here
        fontSize: 28, // Change the font size here
        fontWeight: FontWeight.bold, // Change the font weight here
        fontStyle: FontStyle.italic, // Change the font style here
        fontFamily: 'Arial', // Change the font family here
      ),
    );
  }
}
