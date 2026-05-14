import 'package:flutter/material.dart';
import 'package:saud_frontend/textFields.dart';

class DialogSheet extends StatefulWidget {
  const DialogSheet({super.key});

  @override
  State<DialogSheet> createState() => _DialogSheetState();
}

class _DialogSheetState extends State<DialogSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog & Sheet"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                    context: context,
                  builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Thank You!"),
                        content: Text("Created Successfully"),
                        actions: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));

                          },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ))
                    , child: Text("Okay")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Back"))
                        ],
                      );
                  },
                    );
              },
                        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )), child: Text("Show Dialog Box")),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: (){
               showModalBottomSheet(
                 isDismissible: false,
                   context: context,
                 builder: (BuildContext context) {
                     return Column(
                       children: [
                         Card(
                           color: Colors.yellow,
                           child: ListTile(
                             leading: Icon(Icons.person),
                             title: Text("Profile"),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Card(
                           color: Colors.blue,
                           child: ListTile(
                             leading: Icon(Icons.chat),
                             title: Text("Chats"),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Card(
                           color: Colors.green,
                           child: ListTile(
                             leading: Icon(Icons.settings),
                             title: Text("Settings"),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Card(
                           color: Colors.red,
                           child: ListTile(
                             onTap: (){
                               Navigator.pop(context);
                             },
                             leading: Icon(Icons.logout_sharp),
                             title: Text("Logout")
                           ),
                         ),
                         SizedBox(height: 10,),
                       ],
                     );
                 },);
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )), child: Text("Show Bottom Sheet")),
            ),
          ],
        ),
      ),
    );
  }
}
