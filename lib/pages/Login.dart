// ignore_for_file: file_names, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thinkmart/pages/Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isVisible = true;
  String _username = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
            weight: 4,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(243, 104, 183, 58),
                const Color.fromARGB(255, 236, 243, 33),
                const Color.fromARGB(255, 139, 131, 96),
              ],
            ),
          ),
        ),
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),

              Image.network(
                width: 150,
                "https://media.licdn.com/dms/image/v2/D560BAQHURv3qwP94qg/company-logo_200_200/company-logo_200_200/0/1696079062063?e=2147483647&v=beta&t=kikWTHVtz5bDgACp31H23BvQVVruV5nuQE0_jPh55ek",
              ),

              Text(
                "Sign-In",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              TextFormField(
                onChanged: (inputUserName) {
                  setState(() {
                    _username = inputUserName;
                  });
                },
                decoration: InputDecoration(
                  label: Text("Username"),
                  suffix: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (inputPassword) {
                  setState(() {
                    _password = inputPassword;
                  });
                },
                obscureText: _isVisible,
                decoration: InputDecoration(
                  label: Text("Password"),
                  suffix: _isVisible
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = false;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_rounded),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = true;
                            });
                          },
                          icon: Icon(Icons.visibility_off_rounded),
                        ),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Text("If You Doesn't Have Account"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text("Click here to create "),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Username :$_username");
                      print("Password :$_password");
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Login Successful"),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.done),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
