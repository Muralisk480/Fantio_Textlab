import 'package:fantio/constants.dart';
import 'package:fantio/login/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              // opacity: 0.5,

              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              image: AssetImage("assets/cricket_back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(top: 20, left: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                    child: SizedBox(
                      height: 21,
                      width: 73,
                      child: Image(
                        image: AssetImage('assets/fantio_img_logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: const Text(
                        "Invest in cricket Fandom",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: spaceGrotesk,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              // tap bar

              Column(
                children: [
                  Align(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 2,
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.deepPurpleAccent,
                            Colors.grey
                          ])),
                        ),
                        Container(
                          width: 10,
                          height: 2,
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          color: Colors.white,
                        ),
                        Container(
                          width: 10,
                          height: 2,
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Google
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 20, bottom: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 17,
                                  height: 17,
                                  margin: const EdgeInsets.only(right: 8),
                                  child: Image.asset("assets/name3.jpg")),
                              const Text(
                                "Signup with Google",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: spaceGrotesk,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Facebook
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 17,
                                height: 17,
                                margin: const EdgeInsets.only(right: 8),
                                child: SvgPicture.asset("assets/facebook.svg"),
                              ),
                              const Text(
                                "Signup with Facebook",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: spaceGrotesk,
                                ),
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
                                  builder: (context) => SignupPage()));
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 17,
                                height: 17,
                                margin: const EdgeInsets.only(right: 8),
                                child: SvgPicture.asset("assets/instagram.svg"),
                              ),
                              const Text(
                                "Signup with Instagram",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: spaceGrotesk,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
