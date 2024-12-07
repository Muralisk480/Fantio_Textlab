import 'package:fantio/login/login_page.dart';
import 'package:fantio/login/signup_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  var currentWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Signup",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  // Create text field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Create your account
                      const Text(
                        "Forget password?",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: spaceGrotesk,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 15),

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
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: spaceGrotesk,
                                ),
                                fillColor: Color(0xFF17171B),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF2F2E37),
                                    width: 1,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF2F2E37),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF2F2E37),
                                    width: 1,
                                  ),
                                ),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Send Link button
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
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
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Send Link",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: spaceGrotesk,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "By creating an account you agree with our\n",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                              text: "terms of service",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                            text: " & ",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "privacy policy",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          )
                        ]),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
