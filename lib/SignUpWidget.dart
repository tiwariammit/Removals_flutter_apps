import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';

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
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: AxisDirection.,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(aspectRatio: 2.5/1,
              child: Image.asset("assets/image/deliveryTruck.png"),
                  ),

              SizedBox(height: 10,),

              TextField(
                controller: nameTEC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  height: 0.7,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(0)
                    ),
                    hintText: name,
                    hintStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              SizedBox(height: 10,),
              TextField(
                controller: emailTEC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(0)
                  ),
                  hintText: email,
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),

              SizedBox(height: 10,),
              TextField(
                controller: phoneTEC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(0)
                    ),
                    hintText: phone,
                    hintStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              SizedBox(height: 10,),
              TextField(
                controller: passwordTEC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(0)
                    ),
                    hintText: password,
                    hintStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              SizedBox(height: 10,),
              TextField(
                controller: pinTEC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor(textfieldFillColor),//Colors.grey[350],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(0)
                    ),
                    hintText: pin,
                    hintStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              SizedBox(height: 30,),
              Container(
                height: 50,
                child: ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(HexColor(buttonColor)
                    ),
                  ),
                    child: Text("Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 20,
                      ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
