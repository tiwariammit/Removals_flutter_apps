import 'package:flutter/material.dart';

class RemovalButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;
  final Color backgroundColor;

  const RemovalButton(this.text, this.onPress, this.backgroundColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Material(
            elevation: 0,
            borderRadius: BorderRadius.circular(0),
            color: backgroundColor,
            child: MaterialButton(
              minWidth: 250,
              onPressed: onPress,
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                  ).copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
