import 'package:flutter/material.dart';

void showSnackBar(
    {required String text, required BuildContext context, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: color ?? Colors.red,
    ),
  );
}

void navigate({required BuildContext context, required Widget widget}) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => widget),
  );
}

void navigateReplacement(
    {required BuildContext context, required Widget widget}) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => widget),
  );
}
