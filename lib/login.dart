import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom.dart';
import 'Signup.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: AssetImage("assets/images/mainPage.jpg"),
                    width: 170,
                    height: 170,
                    //alignment: Alignment.center,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Log in to your existant account of Q Allure",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                  CustomTextField(
                      preIcon: Icons.person_outlined,
                      Lable: "heba@gmail.com",
                      color: Colors.blue),
                  CustomTextField(
                      preIcon: Icons.lock_open_outlined, Lable: "Password"),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    padding: EdgeInsets.only(top: 10, right: 20),
                    child: Text(
                      "Forget Password?",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  CustomButton(
                      name: "LOG IN",
                      onpressed: () {
                        return Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      }),
                  Text(
                    "Or connect using",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CustomButton(name: "f  Facebook", onpressed: () {} ),
                      // CustomButton(name: "G  Google", onpressed: () {}),

                      Container(
                        width: 150,
                        height: 30,
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        //decoration: BoxDecoration(border: BoxBorder.none),
                        child: SignInButton(
                          Buttons.Facebook,
                          text: "Facebook",
                          //mini: true,
                          onPressed: () {},
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      Container(
                        //padding: EdgeInsets.only(top: 10, bottom: 30, left: 10),
                        //color: Colors.red,
                        margin: EdgeInsets.only(top: 10, bottom: 20, left: 20),
                        width: 150,
                        height: 30,
                        child: SignInButton(
                          Buttons.Google,
                          text: "Google",
                          onPressed: () {},
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signup()));
                          },
                          child: Text("Sign up")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
