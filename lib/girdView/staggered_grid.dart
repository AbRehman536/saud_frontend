import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridviewStaggered extends StatefulWidget {
  const GridviewStaggered({super.key});

  @override
  State<GridviewStaggered> createState() => _GridviewStaggeredState();
}

class _GridviewStaggeredState extends State<GridviewStaggered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Grid View"),
          backgroundColor: Colors.blue,
        ),
        body: StaggeredGrid.count(
            crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.red,
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.blueGrey,
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.green,
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.yellow,
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.orange,
              ),),
          ],
        )
    );
  }
}
