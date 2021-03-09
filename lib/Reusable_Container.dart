import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
// reusable card for main_page

class Reusablecontainer extends StatefulWidget {
  @override
  _ReusablecontainerState createState() => _ReusablecontainerState();
}

class _ReusablecontainerState extends State<Reusablecontainer> {
  final TapGestureRecognizer _gestureRecognizer =TapGestureRecognizer()..onTap=(){
    debugPrint('Clicked');
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: '_ Word _',
                        style: TextStyle(color: Colors.black87, fontSize: 30),
                        children:[TextSpan(text: 'click here',
                            style: TextStyle(color: Colors.red,fontSize: 25,fontWeight:FontWeight.bold),
                            recognizer: _gestureRecognizer )]),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

//Scratcher(

//brushSize: KbrushSize,
//threshold: 200,
//color: Kcardcolor,

//child:
