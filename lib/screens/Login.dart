// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(115, 158, 158, 158),
      ),

      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzF6fpEYz80AuHz0Omu-7c9iAWHsTrigFRpH80ij2-ArGxf0uQCN91-kSK&s=10",
              height: 300,
              width: 300,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(color: Colors.white70),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.person),
                label: Text("Username"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(color: Colors.white70),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                label: Text("Password"),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () {}, child: Text("Sign-in")),
                OutlinedButton(onPressed: () {}, child: Text("Cancel")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
