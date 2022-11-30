import 'package:flutter/material.dart';
import 'package:removals_flutter_app/Helper/RemovalsColorName.dart';


import 'package:flutter/material.dart';

class DialDisplayView extends StatefulWidget {
  var dialPinArray = [1,2,3];

  DialDisplayView(this.dialPinArray, {super.key});

  @override
  State<DialDisplayView> createState() => _DialDisplayViewState();
}

class _DialDisplayViewState extends State<DialDisplayView> {
  @override
  Widget build(BuildContext context) {
    return
          Center(
            child: GridView.count(
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
              childAspectRatio: 3/2.5,

              children: findView(4, widget.dialPinArray),
            ),
          );
  }

  List <Widget> findView(var totalRow, var selectedRow){

    List <Widget> views = <Widget>[];
    for (int i = 0; i< totalRow; i++) {
      views.add(const DialDisplay(active: false));
    }
      for (int i = 0; i< selectedRow.length; i++){
        views.removeAt(i);
        views.insert(i, const DialDisplay(active: true));
      }
      return views;
  }
}

class DialDisplay extends StatelessWidget {
  final bool active;

  const DialDisplay( {required this.active, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 30,
        height: 30,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? RemovalsColorName.buttonColor : RemovalsColorName.pinDeactive,
          ),
        )
        // active ? Text(indexx.toString(), style: TextStyle(color: Colors.black),) : Text(indexx.toString(), style: TextStyle(color: Colors.red),),

      ),
    );
  }
}


// class DialDisplayView extends StatefulWidget {
//   var dialPinArray = [];
//   final int maxCount;
//   // final Color backgroundColor;
//   // final Color selectedColor;
//
//    DialDisplayView(this.dialPinArray, this.maxCount, {super.key});
//
//   @override
//   State<DialDisplayView> createState() => _DialDisplayViewState();
// }
//
// class _DialDisplayViewState extends State<DialDisplayView> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: SizedBox(
//           // width: 100,
//           // height: 100,
//
//           child: GridView.builder(
//             itemCount: widget.maxCount,
//
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: widget.maxCount,
//                 crossAxisSpacing: 10,
//               ),
//               itemBuilder: (BuildContext context, int index) => findView(index, widget.dialPinArray)
//           )
//         ));
//   }
//
//   Widget findView(int index, var val) {
//
//     return Container(
//       height: 30,
//       width: 30,
//       color: Colors.black,
//       child: const Text('1'),
//     );
//
//     }
// }


