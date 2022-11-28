import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/RemovalButton.dart';


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

              const SizedBox(height: 10,),

              TextField(
                controller: nameTEC,
                textAlign: TextAlign.center,
                autofocus: true,
                textInputAction: TextInputAction.next,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  height: 0.7,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor(buttonColor), width: 2),
                    ),
                    hintText: name,
                    hintStyle: const TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              const SizedBox(height: 10,),
              TextField(
                textInputAction: TextInputAction.next,
                controller: emailTEC,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor(buttonColor), width: 2),
                  ),
                    hintText: email,
                    hintStyle: const TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),

              const SizedBox(height: 10,),
              TextField(
                textInputAction: TextInputAction.next,
                controller: phoneTEC,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor(buttonColor), width: 2),
                    ),
                    hintText: phone,
                    hintStyle: const TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              const SizedBox(height: 10,),
              TextField(
                textInputAction: TextInputAction.next,
                controller: passwordTEC,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor(buttonColor), width: 2),
                    ),
                    hintText: password,
                    hintStyle: const TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              const SizedBox(height: 10,),
              TextField(
                textInputAction: TextInputAction.next,
                controller: pinTEC,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),
                    // border: InputBorder.none,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor(buttonColor), width: 2),
                    ),
                    hintText: pin,
                    hintStyle: const TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              const SizedBox(height: 30,),

              RemovalButton("Sign Up", () {

              },HexColor(buttonColor)),
            ],
          ),
        ),
      ),
    );
  }
}
