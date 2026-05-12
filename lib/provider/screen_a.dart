import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saud_frontend/provider/screen_b.dart';
import 'package:saud_frontend/provider/user_provider.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.blue,),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Saud");
          userProvider.setEmail("Saud@gmail.com");
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenB()));
        }, child: Text("Go to Screen B")),
      ),
    );
  }
}
