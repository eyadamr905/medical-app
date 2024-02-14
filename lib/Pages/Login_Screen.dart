import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Pages/Welcome_Screen.dart';
import 'package:medical_app/main.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(185, 255, 255, 255),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/doctors.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 21, 19, 14),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Username"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 21, 19, 14),
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        if(passToggle == true){
                          passToggle = false;
                        }
                          else{
                            passToggle = true;
                          }
                          setState(() {
                            
                          });
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
                Row(
                  children: [
                    SizedBox(width: 50,),
                        Material(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                               Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Welcome_Screen()
                         ),);
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          child: Text("Back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Material(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                               Navigator.push(context, MaterialPageRoute(
                        builder: (context) => MainPage()
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
                  ],
                ),
            ],
          )),
        ));
  }
}
