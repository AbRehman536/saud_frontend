import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  indicatorColor: Colors.red,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,

                    tabs: [
                      Tab(icon: Icon(Icons.home),text: "Home",),
                      Tab(icon: Icon(Icons.settings),text: "Settings",),
                      Tab(icon: Icon(Icons.person),text: "Profile",),
                    ]),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Center(child: Text("Home"),),
              Center(child: Text("Settings"),),
              Center(child: Text("Profile"),),
            ]),
      ),
    );
  }
}
