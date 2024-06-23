import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.textEditingController,
      this.hintText,
      this.labelText,
      this.maxLine});

  final TextEditingController textEditingController;
  final String? labelText;
  final String? hintText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      maxLines: maxLine,
      cursorColor: const Color(0xff70787D),
      decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(color: Color(0xff006782)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff70787D)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff006782),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color(0xff70787D),
              fontSize: 16,
              fontWeight: FontWeight.w400)),
    );
  }
}
