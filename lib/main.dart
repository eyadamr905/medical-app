import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:medical_app/Pages/Calender_Screen.dart';
import 'package:medical_app/Pages/HomeScreen.dart';

import 'Pages/Person_Screen.dart';
import 'Pages/Search_Sreen.dart';
import 'Pages/Welcome_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome_Screen(),
      debugShowCheckedModeBanner: false,
      title: 'Medical App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final screens = [
    HomeScreen(),
    Calender_Screen(),
    Person_Screen(),
    Search_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App_Bar -_-
      appBar: AppBar(
        title: Text("My Doctor"),
        backgroundColor: Color.fromARGB(213, 125, 179, 170),
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () =>
                  {showSearch(context: context, delegate: CustomSearch())})
        ],
      ),
      body: screens[currentPage],
      //Navigatiion_Bar -_-
      bottomNavigationBar: CurvedNavigationBar(
              
                backgroundColor: Color.fromARGB(186, 255, 255, 255),

          color: Colors.deepPurple.shade200,
          animationDuration: Duration(milliseconds: 320),
          onTap: (currentPage) =>
              setState(() => this.currentPage = currentPage),
          items: [
            if (currentPage == 0)
              Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255))
            else
              Icon(Icons.home_outlined, color: Color.fromARGB(255, 14, 14, 14)),
            if (currentPage == 1)
              Icon(Icons.calendar_month, color: Color.fromARGB(255, 255, 255, 255))
            else
              Icon(Icons.calendar_month_outlined,
                  color: Color.fromARGB(255, 0, 0, 0)),
            if (currentPage == 2)
              Icon(Icons.person, color: Color.fromARGB(255, 255, 255, 255))
            else
              Icon(Icons.person_outlined,
                  color: Color.fromARGB(255, 0, 0, 0)),
          ]),
    );
  }
}
//Search -_-
class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Amrica',
    'Russia',
    'china',
    'Egypt',
    'hla',
    'Amrica',
    'Russia',
    'china',
    'Egypt',
    'hla',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = ' ';
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
      itemCount:
      matchQuery.length;
    });
  }
}
