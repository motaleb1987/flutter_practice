import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType textInputType;
  const InputField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.textInputType
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: labelText,
        label: Text(labelText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.orange),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}