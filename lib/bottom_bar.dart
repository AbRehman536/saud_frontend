import 'package:flutter/material.dart';
import 'package:saud_frontend/date_time.dart';
import 'package:saud_frontend/images.dart';
import 'package:saud_frontend/textFields.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [
    LoginForm(),
    ImagesDemo(),
    DateTimeDemo()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar"),
        backgroundColor: Colors.green,
      ),
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: false,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    );
  }
}
