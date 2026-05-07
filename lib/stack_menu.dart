import 'package:flutter/material.dart';
import 'package:saud_frontend/textFields.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) { 
            return [
              PopupMenuItem(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
                },
                child: Row(children: [
                  Icon(Icons.home),
                  Text("Home")
                ],),
              )),
              PopupMenuItem(child: Row(children: [
                Icon(Icons.notifications_active),
                Text("Notifications")
              ],)),
              PopupMenuItem(child: Row(children: [
                Icon(Icons.settings),
                Text("Settings")
              ],)),
              PopupMenuItem(child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(children: [
                  Icon(Icons.logout_sharp),
                  Text("Logout")
                ],),
              )),
            ];
          },)
        ],
      ),
      drawer: Container(
        height: 300,
        width: 200,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: DrawerHeader(child: Text("My App Drawer"))),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
                }, icon: Icon(Icons.arrow_forward_ios_sharp)),
              ),
              ListTile(
                leading: Icon(Icons.notifications_active),
                title: Text("Notifications"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.logout_sharp),
                title: Text("Logout"),
                trailing: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.login_outlined)),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/ferrari.jpg",width: 200,height: 300,),
          Padding(
            padding: const EdgeInsets.only(left: 100.0,top: 100),
            child: Text("Ferrari",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0,top: 120),
            child: Icon(Icons.favorite, color: Colors.orangeAccent,size: 30,),
          )
        ],
      ),
    );
  }
}
