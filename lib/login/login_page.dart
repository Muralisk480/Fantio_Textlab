import 'package:fantio/botton_navigation/fantio_page.dart';
import 'package:fantio/login/forget_page.dart';
import 'package:fantio/login/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Image.asset("assets/exit.png")),
                              ),
                            ],
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupPage()));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: spaceGrotesk,
                                ),
                              )),
                        ],
                      ),

                      SizedBox(height: 40),
                      // Create text field
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Create your account
                          const Text(
                            "Create your account",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: spaceGrotesk,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 23),

                          // Email
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email id",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: spaceGrotesk,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(

                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,

                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                          const SizedBox(
                            height: 23,
                          ),

                          // Password
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Password",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: spaceGrotesk,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      // Forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPage()));
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFA2A2EF),
                                  fontFamily: spaceGrotesk,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      // Line
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 130,
                              height: 0.5,
                              color: Colors.white,
                            ),
                            const Text(
                              "  Or  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: spaceGrotesk,
                                fontSize: 15,
                                color: Color(
                                  0xFF77787D,
                                ),
                              ),
                            ),
                            Container(
                              width: 130,
                              height: 0.5,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 25),
                      // Signup
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FantioPage()));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 19,
                                    height: 19,
                                    margin: const EdgeInsets.only(right: 8),
                                    child: Image.asset("assets/name3.jpg"),
                                  ),
                                  Text(
                                    "Signup with Google",
                                    style: TextStyle(
                                        fontFamily: spaceGrotesk,
                                        color: Colors.white,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FantioPage()));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 19,
                                    height: 19,
                                    margin: const EdgeInsets.only(right: 8),
                                    child:
                                        SvgPicture.asset("assets/facebook.svg"),
                                  ),
                                  Text(
                                    "Signup with Facebook",
                                    style: TextStyle(
                                        fontFamily: spaceGrotesk,
                                        color: Colors.white,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Login button
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FantioPage()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.orangeAccent,
                                  Colors.purpleAccent,
                                  Colors.blue.shade800,
                                  Colors.blue
                                ]),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  "By creating an account you agree with our\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: spaceGrotesk),
                            ),
                            TextSpan(
                                text: "terms of service",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: spaceGrotesk,
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: "privacy policy",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: spaceGrotesk,
                                  decoration: TextDecoration.underline),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
