import 'package:challenge1_loginscreens/login.dart';
import 'package:challenge1_loginscreens/main.dart';
import 'package:flutter/material.dart';

import 'Custom.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Lets Get Started!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Create an account to Q Allure to get all feature",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                  preIcon: Icons.person_outline,
                  Lable: "Heba Alazzazi",
                  color: Colors.blue),
              CustomTextField(preIcon: Icons.email_outlined, Lable: "Email"),
              CustomTextField(
                  preIcon: Icons.phone_android_outlined, Lable: "Phone"),
              CustomTextField(preIcon: Icons.lock_outline, Lable: "Password"),
              CustomTextField(
                  preIcon: Icons.lock_outlined, Lable: "Confirm Password"),
              CustomButton(name: "Create", onpressed: () {}),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text(" Login here")),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
