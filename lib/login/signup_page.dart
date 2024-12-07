import 'package:fantio/constants.dart';
import 'package:fantio/home.dart';
import 'package:fantio/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                                        shape: BoxShape.circle),
                                    child: Image.asset("assets/exit.png")),
                              ),
                            ],
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: spaceGrotesk,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Create and google package
                      Column(
                        children: [
                          const Text(
                            "Create your account",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: spaceGrotesk,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 30),

                          // Email
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email id",
                                style: TextStyle(
                                  color: Color(0xFFC3C5CC),
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
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          // Password
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Color(0xFFC3C5CC),
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
                                        width: 1,
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
                              ]),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 125,
                                  height: 0.5,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "  Or  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: spaceGrotesk,
                                      color: Color(0xFF77787D)),
                                ),
                                Container(
                                  width: 125,
                                  height: 0.5,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 19,
                                          height: 19,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          child:
                                              Image.asset("assets/name3.jpg"),
                                        ),
                                        SizedBox(width: 10),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset("assets/facebook.svg"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "Signup with Facebook",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: spaceGrotesk,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Loginpage button
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
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
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Signup",
                                style: TextStyle(
                                    color: Color(0xFF050506),
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
                            text: "By creating an account you agree with our\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: spaceGrotesk,
                            ),
                          ),
                          TextSpan(
                              text: "terms of service",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: spaceGrotesk,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                            text: " & ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: spaceGrotesk,
                            ),
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
                ]),
          ),
        ),
      ),
    );
  }
}
