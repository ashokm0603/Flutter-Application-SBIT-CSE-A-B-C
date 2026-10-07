// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:thinkmart/screens/AddProduct.dart';
import 'package:thinkmart/screens/HomeScreen.dart';
import 'package:thinkmart/screens/Login.dart';
import 'package:thinkmart/screens/Profile.dart';
import 'package:thinkmart/screens/Register.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _index = 0;

  List<Widget> screens = [
    HomeScreen(),
    Register(),
    AddProduct(),
    Login(),
    Profile(),
  ];

  void setScreen(int ind) {
    setState(() {
      _index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(142, 93, 144, 215),
          title: Text(
            "Think Mart",
            style: TextStyle(
              color: const Color.fromARGB(255, 6, 45, 238),
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            Icon(Icons.list_rounded, color: Colors.blueAccent, size: 30),
            SizedBox(width: 20),
          ],
          bottom: PreferredSize(
            preferredSize: Size(150, 50),
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white54,
                  hint: Text("Search Any Thing"),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ),
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: setScreen,
          backgroundColor: const Color.fromARGB(255, 224, 142, 242),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: "Home",
              backgroundColor: const Color.fromARGB(255, 224, 142, 242),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration, size: 30),
              label: "Register",
              backgroundColor: const Color.fromARGB(255, 224, 142, 242),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 30),
              label: "Post",
              backgroundColor: const Color.fromARGB(255, 224, 142, 242),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login, size: 30),
              label: "Login",
              backgroundColor: const Color.fromARGB(255, 224, 142, 242),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: "Profile",
              backgroundColor: const Color.fromARGB(255, 224, 142, 242),
            ),
          ],
        ),
      ),
    );
  }
}
