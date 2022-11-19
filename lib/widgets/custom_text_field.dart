import 'package:flutter/material.dart';

// ignore:must_be_immutable
class CustomTextField extends StatelessWidget {
  String? text;
  String? label;
  Icon? prefixIcon;
  String? value;

  CustomTextField(
      {super.key,
      required this.text,
      required this.value,
      this.label,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val) {
        value = val;
      },
      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(label ?? 'Enter label'),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}
