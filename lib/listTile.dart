import 'package:flutter/material.dart';

class ListtileDemo extends StatefulWidget {
  const ListtileDemo({super.key});

  @override
  State<ListtileDemo> createState() => _ListtileDemoState();
}

class _ListtileDemoState extends State<ListtileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/ferrari.jpg"),
              ),
              title: Text("Saud"),
              subtitle: Text("Hello, How are you?"),
              trailing: Text("4/21/2026"),
            ),
          );
        },
      ),
    );
  }
}
