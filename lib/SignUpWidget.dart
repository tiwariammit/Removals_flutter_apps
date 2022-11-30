import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/RemovalsColorName.dart';
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
  final Color textfieldFillColor = RemovalsColorName.textfieldFillColor;
  final Color buttonColor = RemovalsColorName.buttonColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(aspectRatio: 2.5/1,
                child: Image.asset("assets/image/deliveryTruck.png"),
                    ),

                RemovalTextField(emailTEC, false, textfieldFillColor, buttonColor, email),
                RemovalTextField(nameTEC, true, textfieldFillColor, buttonColor, name),
                RemovalTextField(phoneTEC, false, textfieldFillColor, buttonColor, phone),
                RemovalTextField(passwordTEC, false, textfieldFillColor, buttonColor, password),
                RemovalTextField(pinTEC, false, textfieldFillColor, buttonColor, pin),

                const SizedBox(height: 20,),

                RemovalButton("Sign Up", () {

                },buttonColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
