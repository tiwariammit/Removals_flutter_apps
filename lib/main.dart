import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/LoginWithPinWidget.dart';
import 'package:removals_flutter_app/SignUpWidget.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/RemovalButton.dart';

void main() {

  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => HomeWidgetState();

  static HomeWidgetState of(BuildContext context) =>
      context.findAncestorStateOfType<HomeWidgetState>()!;
}

class HomeWidgetState extends State<HomeWidget> {

  final String buttonColor = "#255E90";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/image/deliveryTruck.png'),
              RemovalButton("Login with PIN", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginWithPinWidget())
                );
              },HexColor(buttonColor)),

              RemovalButton("Sign Up", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpWidget())
                );
              },HexColor(buttonColor)),
            ],
          )
      ),
    );
  }
}