import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/LoginWithPinWidget.dart';
import 'package:removals_flutter_app/SignUpWidget.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';


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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => LoginWithPinWidget())
                    );

                  },
                    child: Text("Login with PIN",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(HexColor(buttonColor)),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => SignUpWidget())
                    );
                  },
                    child: Text("Sign UP",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(HexColor(buttonColor)),

                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}