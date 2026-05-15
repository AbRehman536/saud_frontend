import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color(0xff121212)
            ),),
            SizedBox(height: 6,),
            Text("Please enter the mobile number associated with your account."
              ,style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff949494)
              ),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: "+92 83487342",
                hintStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xff121212)
                ),
                prefixIcon: Image.asset("assets/images/flag.png",width: 24,height: 24,),
                filled: true,
                fillColor: Color(0xffEEF0F6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                )

              ),
            ),
            const Spacer(),
            SizedBox(
              height: 56,width: 334,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF5934),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                  , child: Text("Send OTP",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xffFFFFFF)
                  ),)),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 56,width: 334,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ), child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xffBDBDBD)
                  ),),
                  Text("Create Account",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xffFF5934)
                  ),)
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
