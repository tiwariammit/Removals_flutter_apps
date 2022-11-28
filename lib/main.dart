import 'package:flutter/material.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body:
      // Container(
      //   padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
      //   child: (
      Padding(
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

                  },
                    child: Text("Login with PIN",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    style: ButtonStyle(

                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(onPressed: (){

                  },
                    child: Text("Sign UP",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    style: ButtonStyle(

                    ),
                  ),
                ),
              ),
            ],
          )
      ),

      // ),
      //     ),
    );
  }
}