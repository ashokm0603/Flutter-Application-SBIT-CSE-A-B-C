// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:thinkmart/pages/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isVisible = true;

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
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.network(
                  width: 100,
                  height: 150,
                  "https://media.licdn.com/dms/image/v2/D560BAQHURv3qwP94qg/company-logo_200_200/company-logo_200_200/0/1696079062063?e=2147483647&v=beta&t=kikWTHVtz5bDgACp31H23BvQVVruV5nuQE0_jPh55ek",
                ),

                Text(
                  "Sign-up",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Name"),
                    suffix: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    suffix: Icon(Icons.mail),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                TextFormField(
                  decoration: InputDecoration(
                    label: Text("+91"),
                    suffix: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                TextFormField(
                  obscureText: _isVisible,
                  decoration: InputDecoration(
                    label: Text("Create Password"),
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
                    Text("If You Have Account"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text("Click here to login "),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
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
      ),
    );
  }
}
