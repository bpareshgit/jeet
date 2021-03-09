import 'package:flutter/material.dart';
import 'Reusable_Container.dart';



void main() => runApp(Eisvogel());

class Eisvogel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.orange ,visualDensity:VisualDensity.adaptivePlatformDensity ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.pink[100],//

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,color: Colors.black,),
        actions: <Widget> [
          IconButton(
              icon:Icon(Icons.search),
              color:Colors.black,
              onPressed:(){}
              ),

          IconButton(
              icon:Icon(Icons.ac_unit),
              color:Colors.black,
              onPressed:(){}
          )],
      ),
      body: GridView.count(
        primary: false,
        padding:EdgeInsets.all(10),
        crossAxisSpacing: 05,
        mainAxisSpacing: 05,
        crossAxisCount: 1,
        children: <Widget>[
          Reusablecontainer(),
          Reusablecontainer(),
          Reusablecontainer(),
          Reusablecontainer(),
          Reusablecontainer(),
          Reusablecontainer(),


            ],),
    );}
}
