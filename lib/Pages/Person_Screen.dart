import 'package:flutter/material.dart';
import 'package:medical_app/Pages/Search_Sreen.dart';

class Person_Screen extends StatefulWidget {
  const Person_Screen({super.key});

  @override
  State<Person_Screen> createState() => _Person_ScreenState();
}

class _Person_ScreenState extends State<Person_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
  
    child: Padding(

      padding: EdgeInsets.only(top:20,left: 10,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15,),
          ListTile(
            leading: CircleAvatar(radius: 30,
            backgroundImage: AssetImage("images/doctor1.jpg"),
            ),
            title: Text("Dr.Maha",
            style: TextStyle( 
              fontWeight: FontWeight.w500,
              fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}