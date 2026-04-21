import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  int selectedIndex = -1;
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
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              selected: selectedIndex == index ,
              selectedTileColor: Colors.green,
              selectedColor: Colors.white,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/ferrari.jpg"),
              ),
              title: Text("Saud $selectedIndex"),
              subtitle: Text(selectedIndex == index ?"Read $index" : "Unread"),
              trailing: Text(selectedIndex == index ?"4/21/2026" : "1:33 PM"),
            ),
          );
        },
      ),
    );
  }
}
