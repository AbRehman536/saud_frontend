import 'package:flutter/material.dart';

class MultipleSelection extends StatefulWidget {
  const MultipleSelection({super.key});

  @override
  State<MultipleSelection> createState() => _MultipleSelectionState();
}

class _MultipleSelectionState extends State<MultipleSelection> {
  List<int> selectedIndex = [];
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
                  if(selectedIndex.contains(index)){
                    selectedIndex.remove(index);
                  }else{
                    selectedIndex.add(index);
                  }
                });
              },
              selected: selectedIndex.contains(index),
              selectedTileColor: Colors.green,
              selectedColor: Colors.white,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/ferrari.jpg"),
              ),
              title: Text("Saud $selectedIndex"),
              subtitle: Text("Hello, How are you? $index"),
              trailing: Text("4/21/2026"),
            ),
          );
        },
      ),
    );
  }
}
