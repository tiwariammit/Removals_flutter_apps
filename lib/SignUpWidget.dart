import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/RemovalButton.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/RemovalTextField.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => SignUpWidgetState();
}

class SignUpWidgetState extends State<SignUpWidget> {

  late TextEditingController emailTEC = TextEditingController();
  late TextEditingController nameTEC = TextEditingController();
  late TextEditingController phoneTEC = TextEditingController();
  late TextEditingController passwordTEC = TextEditingController();
  late TextEditingController pinTEC = TextEditingController();

  String email = "Email";
  String name = "Name";
  String phone = "Phone Number";
  String password = "Enter Your Password";
  String pin = "Enter Your Pin";

  //Color
  final String textfieldFillColor = "#D8D8D9";
  final String buttonColor = "#255E90";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey[900],
      appBar: AppBar(

      ),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: AxisDirection.,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(aspectRatio: 2.5/1,
              child: Image.asset("assets/image/deliveryTruck.png"),
                  ),

              RemovalTextField(nameTEC, true, HexColor(textfieldFillColor), HexColor(buttonColor), name),
              RemovalTextField(emailTEC, false, HexColor(textfieldFillColor), HexColor(buttonColor), email),
              RemovalTextField(phoneTEC, false, HexColor(textfieldFillColor), HexColor(buttonColor), phone),
              RemovalTextField(passwordTEC, false, HexColor(textfieldFillColor), HexColor(buttonColor), password),
              RemovalTextField(pinTEC, false, HexColor(textfieldFillColor), HexColor(buttonColor), pin),

              const SizedBox(height: 20,),

              RemovalButton("Sign Up", () {

              },HexColor(buttonColor)),
            ],
          ),
        ),
      ),
    );
  }
}
