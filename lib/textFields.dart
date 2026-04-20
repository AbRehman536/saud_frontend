import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Login"),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Email"),
                hintText: "abdullah@gmail.com",
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  borderSide: BorderSide.none
                )
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Password"),
                hintText: "*************",
                prefix: Icon(Icons.lock),
                suffix: Icon(Icons.visibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    ),
                    borderSide: BorderSide.none
                )
            ),),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                  onPressed: (){
                    if(emailController.text.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                          content: Text("Email is required")));
                      return;
                    }
                    if(passwordController.text.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                          content: Text("Password is required")));
                      return;
                    }
                    if(passwordController.text.length < 8){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                          content: Text("Password is more than 8 digits")));
                      return;
                    }

                  },
                  child: Text("Login")),
            ),
            Row(
              children: [
                Text("Don't have account? "),
                TextButton(onPressed: (){}, child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
