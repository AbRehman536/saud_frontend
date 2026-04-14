import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,size: 30,),
        title: Text("Flutter Demo",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          height: 0,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dashed,
          decorationThickness: 5,
          fontFamily: "Raleway"
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.yellow,size: 40,),
          Icon(Icons.settings,color: Colors.greenAccent,size: 45,),
          Icon(Icons.bookmark,color: Colors.orange, size: 25,),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
