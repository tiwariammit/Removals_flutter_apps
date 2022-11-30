import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/RemovalsColorName.dart';
// import 'dart:convert';

class DialKey extends StatelessWidget {
  final String number;
  final void Function()? onPress;
  // final String heroTag;
  final Color backgroundColor;

  const DialKey(this.number, this.backgroundColor, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        onPressed: onPress,
        heroTag: number,
        backgroundColor: backgroundColor,
        child: findView(number),
      ),
    ));
  }


  Widget findView(String num) {

    if  (int.tryParse(num) != null){
      return Text(
        num,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    } else if (num == "x") {
      return AspectRatio(
        aspectRatio: 2 / 1,
        child: Image.asset(
          "assets/image/clear.png",
        ),
      );
    } else {
      return Text(
        num,
        style: const TextStyle(
          fontSize: 19,
          color: Colors.white,
        ),
      );
    }
  }
}
