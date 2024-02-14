import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List symptoms = [
    "temperatuer",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];
  
  List images = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];
  bool passToggle = true;

  get mainAxisAlignment => null;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Alex",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/doctor4.jpg"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          spreadRadius: 25,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color(0XFF7165D6),
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Clinic Visit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Make an appointment",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        )
                      ],
                    )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          spreadRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(197, 215, 215, 215),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.home,
                            color: Color(0XFF7165D6),
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Home Visit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Call the doctor home",
                          style: TextStyle(
                            color: Color.fromARGB(137, 0, 0, 0),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("What are your symptons?",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                )),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              shrinkWrap:true,
              scrollDirection:Axis.horizontal,
              itemCount:symptoms.length,
              itemBuilder:
              (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2),
                      ]),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color:Colors.black54,
                          )
                        ),
                      ),
                );
              },
            ),
          ),
          SizedBox(height: 15,),
          Padding(
           padding: EdgeInsets.only(left: 15),
           child: Text(
          "Popular Doctors",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color:Colors.black54,
          )
           ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (
              crossAxisCount: 2
            ), 
             
                 itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), 
        itemBuilder: (BuildContext context, int index) {  
            return InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                    color:Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,

                   ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                       backgroundImage: AssetImage("images/${images[index]}"),
                    ),
                    Text("Dr. Doctor Name",
                    style: TextStyle(
                       fontSize:18,
                       fontWeight: FontWeight.w500,
                       color: Colors.black54,
                       ),),
                       Text(
                        "Therapist",
                        style:TextStyle(
                          color: Colors.black45
                        )
                       )
                  ],
                ),
              ),
            );
             },
            ),   
        ]));
  }
}
