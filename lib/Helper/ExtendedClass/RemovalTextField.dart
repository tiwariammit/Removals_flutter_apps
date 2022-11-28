import 'package:flutter/material.dart';

class RemovalTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool autoFocus;
  final Color fillColor;
  final Color focusColor;

  const RemovalTextField(this.controller, this.autoFocus, this.fillColor, this.focusColor, this.hintText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        autofocus: autoFocus,
        textInputAction: TextInputAction.next,
        style: const TextStyle(
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
          height: 0.7,
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            // border: InputBorder.none,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusColor, width: 2),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
    );
  }
}
