import 'package:flutter/material.dart';
import 'package:medical_app/Pages/HomeScreen.dart';
import 'package:medical_app/Pages/Login_Screen.dart';
import 'package:medical_app/Pages/Sign_Up.dart';
import 'package:medical_app/main.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
     
     color: Color.fromARGB(219, 255, 254, 254),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
          
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                           Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Login_Screen()
                     ),);
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                ),
                                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Sign_Up()
                       ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () {
                       Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MainPage()
                     ),);
              },
               child: Text("login as guest",
             style: TextStyle(
                        color: Color.fromARGB(255, 57, 136, 186),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
               )))
          
          ],
        ),
      ),
    );
  }
}

class Algin {}
