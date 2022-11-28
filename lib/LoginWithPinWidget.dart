import 'package:flutter/material.dart';

class LoginWithPinWidget extends StatefulWidget {
  const LoginWithPinWidget({Key? key}) : super(key: key);

  @override
  State<LoginWithPinWidget> createState() => LoginWithPinWidgetState();
}

class LoginWithPinWidgetState extends State<LoginWithPinWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text("hello"),
      ),
    );
  }
}
