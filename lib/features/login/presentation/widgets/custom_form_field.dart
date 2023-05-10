import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final bool isPassword;

  const CustomFormField({
    required this.textEditingController,
    required this.labelText,
    required this.isPassword,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      obscureText: isPassword && true,
    );
  }
}
