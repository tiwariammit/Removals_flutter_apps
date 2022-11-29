import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/DialKey.dart';
import 'package:removals_flutter_app/Helper/ExtendedClass/HexColor.dart';
import 'package:removals_flutter_app/Helper/RemovalsColorName.dart';


class LoginWithPinWidget extends StatefulWidget {
  const LoginWithPinWidget({Key? key}) : super(key: key);

  @override
  State<LoginWithPinWidget> createState() => LoginWithPinWidgetState();
}

class LoginWithPinWidgetState extends State<LoginWithPinWidget> {
  Color removalBackgroundColor = HexColor("#4887BF");
  var pinDisplayArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "Forget", "0", "x"];
  var dialPinArray = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: removalBackgroundColor,
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 6 / 1,
              child: Image.asset(
                "assets/image/truck.png",
              ),
            ),
            Text(
              "Enter Your PIN",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: RemovalsColorName.textfieldFillColor,
              ),
            ),
            const SizedBox(height: 5),

            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.55,
              child: Container(
                decoration: BoxDecoration(
                  color: RemovalsColorName.textfieldFillColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,

                    ),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => DialKey("1", "1", RemovalsColorName.buttonColor, () { })
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                  itemCount: pinDisplayArray.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 3/2.5
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  itemBuilder: (BuildContext context, int index) => DialKey(
                      pinDisplayArray[index], pinDisplayArray[index], RemovalsColorName.buttonColor, () {})),
            ),
          ],
        ));
  }
}
