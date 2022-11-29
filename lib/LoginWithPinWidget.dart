import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';

class LoginWithPinWidget extends StatefulWidget {
  const LoginWithPinWidget({Key? key}) : super(key: key);

  @override
  State<LoginWithPinWidget> createState() => LoginWithPinWidgetState();
}

class LoginWithPinWidgetState extends State<LoginWithPinWidget> {

  Color removalBackgroundColor = HexColor("#4887BF");
  var pinDisplayArray = ["1", "2", "3","4", "5", "6","7", "8", "9","forget", "0", "x"];
  var dialPinArray = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: removalBackgroundColor,
      appBar: AppBar(

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(aspectRatio: 6/1,
            child: Image.asset("assets/image/truck.png",),
          ),
          const Text("Enter Your PIN",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          
          GridView.count(
            crossAxisCount: pinDisplayArray.length,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            children: [

            ]
          )

        ],
      )
    );
  }
}
