import 'package:flutter/material.dart';

class GridviewBuild1 extends StatefulWidget {
  const GridviewBuild1({super.key});

  @override
  State<GridviewBuild1> createState() => _GridviewBuild1State();
}

class _GridviewBuild1State extends State<GridviewBuild1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Grid View"),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 200,
            ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.orangeAccent,
                child: Column(
                  children: [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),
              );
          },
            )
    );
  }
}
