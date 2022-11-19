import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function function;

  const CustomButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function;
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          minimumSize: const Size(double.infinity - 30, 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
