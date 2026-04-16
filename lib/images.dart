import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Network Image
            Container(
              color: Colors.yellow,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s",
              width: 300,height: 300,fit: BoxFit.fill,),
            ),
            Image.asset("assets/images/ferrari.jpg",width: 200,height: 100,),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s",
               ),
            ),
            ClipOval(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s",
              ),
            ),
            CircleAvatar(
              radius: 80,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/images/ferrari.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
