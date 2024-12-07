import 'package:fantio/botton_navigation/buy_page.dart';
import 'package:fantio/constants.dart';
import 'package:flutter/material.dart';

class ColorPalette {
  static const Color oceanBlue = Color(0xFF1A1926);
  static const Color sunsetOrange = Color(0xFFFF4500);
  static const Color forestGreen = Color(0xFF228B22);
  static const Color goldenYellow = Color(0xFFFFD700);
  static const Color lavenderPurple = Color(0xFFE6E6FA);
}

class FantioPage extends StatefulWidget {
  const FantioPage({super.key});

  @override
  State<FantioPage> createState() => _FantioPageState();
}

class _FantioPageState extends State<FantioPage>
    with SingleTickerProviderStateMixin {
  // final style = TextStyle(font);
  TabController? tabController;
  var tabs = ["", "", ""];

  @override
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this);
    tabController!.addListener(() {
      setState(() {});
    });
    super.initState();
  }
  int countValue = 0;
  @override
  Widget build(BuildContext context) {


    void increment() {
      setState(() {
        countValue++;
      });
    }

    void decrement() {
      setState(() {
        if (countValue > 0) {
          countValue--;
        }
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Color(0x00121215),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Image.asset(
                              width: 74,
                              height: 21,
                              "assets/cricadda_logo.png",
                            ),
                          ]),

                          // profile

                          Stack(
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  gradient: LinearGradient(colors: [
                                    Colors.orange,
                                    Colors.deepPurpleAccent,
                                    Colors.purpleAccent,
                                    Colors.blue
                                  ]),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                    size: 23,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        // Banner
                        SizedBox(
                          width: double.infinity,
                          height: 270,
                          child: TabBarView(
                            viewportFraction: 1,
                            controller: tabController,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assets/banner1.png", width: double.infinity, height: 274,fit: BoxFit.cover,),
                                  Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.transparent,
                                            Colors.black26,
                                            Colors.black54,
                                          ],
                                          stops: [0.3, 0.5, 0.9],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                    ),
                                  )
                                ],
                              ),
                              Stack(
                                children: [
                                  Image.asset("assets/banner1.png", width: double.infinity, height: 274,fit: BoxFit.cover,),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black26,
                                          Colors.black54,
                                        ],
                                        stops: [0.3, 0.5, 0.9],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Stack(
                                children: [
                                  Image.asset("assets/banner1.png", width: double.infinity, height: 274,fit: BoxFit.cover,),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black26,
                                          Colors.black54,
                                        ],
                                        stops: [0.3, 0.5, 0.9],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        TabBar(
                            tabAlignment: TabAlignment.center,
                            dividerColor: Colors.transparent,
                            indicatorColor: Colors.white,
                            indicatorPadding: EdgeInsets.zero,
                            onTap: (value) {
                              setState(() {});
                            },
                            labelPadding: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            controller: tabController,
                            tabs: tabs.map((t) {
                              return Tab(
                                child: getTab(tabController!.index),
                              );
                            }).toList()),

                        // Upcoming matches
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Upcoming matches",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: spaceGrotesk,
                                    fontWeight: FontWeight.bold),
                              ),

                              Row(
                                children: [
                                  Text(
                                    "View all",
                                    style: TextStyle(
                                        color: Color(0xFF8585C3),
                                        fontFamily: spaceGrotesk,
                                        fontSize: 14),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF8585C3),
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            height: 160,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return
                                Card(
                                  elevation: 0.3,
                                  color: Colors.black,
                                  child: Container(
                                    width: 300,
                                    height: 166,
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF16161C),
                                          Color(0xFF1A1926),
                                          Color(0xFF16161C),
                                        ],
                                            stops: [
                                              0.2,
                                              0.5,
                                              0.9
                                            ],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          width: 0.5,
                                          color: Color(
                                            0xFF373742,
                                          ),
                                        )

                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Indian T20 League",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: spaceGrotesk,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF77787D),
                                          ),
                                        ),

                                        // ------
                                        Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          height: 0.1,
                                        ),

                                        //   Teams row
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            // Team name
                                            Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        100),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/kkr1.png"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "KKR",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: spaceGrotesk,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )
                                              ],
                                            ),

                                            //   Time
                                            Column(
                                              children: [
                                                Text(
                                                  "20 May",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    fontFamily: spaceGrotesk,
                                                  ),
                                                ),
                                                Text(
                                                  "08:35 PM",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    fontFamily: spaceGrotesk,
                                                  ),
                                                )
                                              ],
                                            ),

                                            //  Teams
                                            Row(
                                              children: [
                                                Text(
                                                  "CSK",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: spaceGrotesk,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        100),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/csk1.png"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(),
                                        Container(
                                          width: 339,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF212B28),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          margin: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              right: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  height: 18,
                                                  width: 18,
                                                  "assets/reward.png"),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Game Rewards",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: spaceGrotesk,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "40,000",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffB0E35E),
                                                  fontFamily: spaceGrotesk,
                                                ),
                                              ),
                                              Icon(
                                                Icons.monetization_on,
                                                color: Color(0xFFFEE268),
                                                size: 16,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );

                              }
                            ),
                          ),
                        ),
                        SizedBox(),

                        //  Pack of player cards
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pack of player cards",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: spaceGrotesk,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(children: [
                                Text(
                                  "View all",
                                  style: TextStyle(
                                      color: Color(0xFF8585C3),
                                      fontFamily: spaceGrotesk,
                                      fontSize: 14),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFF8585C3),
                                  size: 19,
                                )
                              ])
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        // Players card
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            height: 176,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  color: Color(0xFF121215),
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    // side: BorderSide(
                                    //     width: 1, color: Color(0xFFFCCE80),
                                    // ),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                            color: Color(0xFFFCCE80), width: 1),
                                        bottom: BorderSide(
                                            color: Color(0xFFFCCE80),
                                            width: 0.5),
                                        left: BorderSide(
                                            color: Color(0xFFFCCE80),
                                            width: 0.1),
                                        right: BorderSide(
                                            color: Color(0xFFFCCE80),
                                            width: 0.2),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/gold_backg.png"),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 330,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      width: 66,
                                                      height: 111,
                                                      "assets/gold_goal.png"),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          bottom: 10,
                                                          right: 6,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "KKR X RAJ Debute",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      spaceGrotesk,
                                                                  color: Colors
                                                                      .white),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),

                                                            // 2Gold cards
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  "2 Gold cards",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          spaceGrotesk,
                                                                      color: Color(
                                                                          0xFFC89C4F),
                                                                      fontSize:
                                                                          11),
                                                                ),
                                                                SizedBox(
                                                                    width: 3),
                                                                Icon(
                                                                  Icons.circle,
                                                                  color: Colors
                                                                      .grey,
                                                                  size: 5,
                                                                ),
                                                                SizedBox(
                                                                    width: 3),
                                                                Text(
                                                                  "Out of",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          spaceGrotesk,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          11),
                                                                ),
                                                                SizedBox(
                                                                    width: 3),
                                                                ShaderMask(
                                                                  shaderCallback:
                                                                      (bounds) {
                                                                    return LinearGradient(
                                                                            colors: [
                                                                          Colors
                                                                              .orangeAccent,
                                                                          Colors
                                                                              .purpleAccent,
                                                                          Colors
                                                                              .deepPurpleAccent,
                                                                          Colors
                                                                              .blueAccent
                                                                        ],
                                                                            begin: Alignment
                                                                                .centerLeft,
                                                                            end: Alignment
                                                                                .centerRight)
                                                                        .createShader(Rect.fromLTWH(
                                                                            0,
                                                                            0,
                                                                            bounds.width,
                                                                            bounds.height));
                                                                  },
                                                                  blendMode:
                                                                      BlendMode
                                                                          .srcIn,
                                                                  child: Text(
                                                                    "18 Players cards",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            spaceGrotesk,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                            Container(
                                                              width: 70,
                                                              height: 0.1,
                                                              color:
                                                                  Colors.white,
                                                            ),

                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            //   7$
                                                            Row(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      "\$7",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontFamily:
                                                                              spaceGrotesk,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 4,
                                                                    ),
                                                                    Text(
                                                                      "Approx 576",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontFamily:
                                                                              spaceGrotesk,
                                                                          color:
                                                                              Colors.grey),
                                                                    )
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                    width: 40),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          30,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF1F1F24),
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              InkWell(
                                                                            onTap: decrement,
                                                                            child: Icon(Icons.remove,
                                                                                color: Colors.white,
                                                                                size: 15),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 3,
                                                                    ),
                                                                    Text(
                                                                      "$countValue",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 3,
                                                                    ),
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          30,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF1F1F24),
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              InkWell(
                                                                            onTap: increment,
                                                                            child: Icon(Icons.add,
                                                                                color: Colors.white,
                                                                                size: 15),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0),
                                                        child: SizedBox(
                                                          width: 232,
                                                          height: 40,
                                                          child: ElevatedButton(
                                                              style: ElevatedButton.styleFrom(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10))),
                                                              onPressed: () {},
                                                              child: Text(
                                                                "Buy now",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontFamily:
                                                                      spaceGrotesk,
                                                                ),
                                                              )),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        //   Single cards
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Single Cards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: spaceGrotesk,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(children: [
                                Text(
                                  "View all",
                                  style: TextStyle(
                                    color: Color(0xFF8585C3),
                                    fontSize: 14,
                                    fontFamily: spaceGrotesk,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFF8585C3),
                                  size: 19,
                                )
                              ])
                            ],
                          ),
                        ),

                        // Cards
                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 10, top: 10),
                            height: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    color: Color(0xFF1E1A1B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Stack(
                                            children:[
                                              Image.asset(
                                                  height: 105,
                                                  width: 150,
                                                  "assets/card_virat2.png"),]
                                          ),
                                          //   Details player
                                          Container(
                                            width: 169,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF2C2424),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15,
                                                  top: 13,
                                                  right: 2,
                                                  bottom: 5),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "VIRAT",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              spaceGrotesk,
                                                          color: Colors
                                                              .white,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w400),
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "KHOLI",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              spaceGrotesk,
                                                          color: Colors
                                                              .white,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Age 31",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              spaceGrotesk,
                                                          color: Colors
                                                              .white),
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Icon(Icons.circle,
                                                        size: 5,
                                                        color: Colors
                                                            .grey),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Image.asset(
                                                        height: 40,
                                                        width: 40,
                                                        "assets/india.png"),
                                                  ],
                                                ),

                                                // line
                                                Container(
                                                  width: 170,
                                                  color: Colors.grey,
                                                  height: 0.1,
                                                ),

                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "\$7",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  spaceGrotesk,
                                                              color: Colors
                                                                  .white),
                                                        ),
                                                        Text(
                                                          "Approx 576",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 10),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .all(7.0),
                                                      child: TextButton(
                                                        style: TextButton.styleFrom(
                                                            minimumSize:
                                                                Size(73, 42),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            side: BorderSide(
                                                                width: 1,
                                                                color: Colors
                                                                    .white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Buy now",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white,
                                                              fontFamily:
                                                                  spaceGrotesk,
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })),

                        SizedBox(
                          height: 30,
                        ),

                        Column(
                          children: [
                            //Learn cards
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Learn",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: spaceGrotesk,
                                        color: Color(0xFF8A8A97),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),

                            //   What are cards?

                            Container(
                              width: double.infinity,
                              height: 123,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent),

                                  child: ListView.builder(
                                    itemCount: 3,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (BuildContext context, int index){
                                      return Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              top: 14, left: 14, right: 5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                              width: 2,
                                              color: Color(
                                                0xFF34343D,
                                              ),
                                            ),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF19232C),
                                                  Color(0xFF4D437F),
                                                  Color(0xFF19232C)
                                                ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight),
                                          ),
                                          child: SizedBox(
                                            width: 260,
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    height: 57,
                                                    width: 49.5,
                                                    "assets/rcb_duo.png"),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "What are cards?",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: spaceGrotesk,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 180,
                                                      // margin: EdgeInsets.only(left: 5),
                                                      child: Text(
                                                        "know about player cards and their difference",
                                                        style: TextStyle(
                                                          color: Color(0xFF8A8A97),
                                                          fontSize: 12,
                                                          fontFamily: spaceGrotesk,
                                                        ),
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        maxLines: 2,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 180,
                                                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 390,
                height: 0.8,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Colors.orangeAccent,
                      Colors.purpleAccent,
                      Colors.purple,
                      Colors.blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds); // Add .createShader(bounds)
                },
                child: Text(
                  'Crickadda',
                  style: TextStyle(
                    color:
                        Colors.white, // Required to ensure gradient is applied
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8A8A97),
        unselectedItemColor: Color(0xFF8A8A97),
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF161619),
              icon: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Colors.orangeAccent,
                    Colors.purpleAccent,
                    Colors.deepPurple,
                    Colors.blueAccent
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyPage(),
                  ),
                );
              },
              child: Image.asset("assets/buy.png",height: 28,width: 28,),
            ),
            label: "buy",

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset("assets/play.png",height: 28,width: 28,),
            label: "Play",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset("assets/referral.png",height: 28,width: 28,),
            label: "Referral",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset("assets/wallet.png",height: 28,width: 28,),
            label: "wallet",
          ),
        ],
      ),
    );
  }

  Widget getTab(int index) {
    return Container(
      height: 0,
      width: 6,
      decoration: BoxDecoration(color: Colors.transparent),
    );
  }
}
