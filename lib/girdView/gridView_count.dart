import 'package:flutter/material.dart';

class GridviewCount extends StatefulWidget {
  const GridviewCount({super.key});

  @override
  State<GridviewCount> createState() => _GridviewCountState();
}

class _GridviewCountState extends State<GridviewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
          crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.red,
            child:Column(
              children: [
                Icon(Icons.home),
                Text("Home")
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child:Column(
              children: [
                Icon(Icons.call),
                Text("Contact")
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child:Column(
              children: [
                Icon(Icons.map),
                Text("Map")
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            child:Column(
              children: [
                Icon(Icons.camera),
                Text("Camera")
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child:Column(
              children: [
                Icon(Icons.settings),
                Text("Settings")
              ],
            ),
          ),
        ],
      )
    );
  }
}
