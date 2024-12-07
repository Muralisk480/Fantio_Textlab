import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050506),
      body: SafeArea(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(
                            0xFF2F2E37,
                          ),
                        ),
                      ),
                      label: Text(
                        "Search by Players",
                      ),
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Color(
                          0xFF77787D,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // 14 Collectibles
                  Row(
                    children: [
                      Text(
                        "14 Collectibles in Total",
                        style: TextStyle(
                          color: Color(
                            0xFF8A8A97,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF3B3B47),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "  All  X   " ,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      //   GridView

                    ],
                  ),
                  SizedBox(height: 50,),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 8
                      ),
                      itemBuilder: (context, index){
                        return Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 40,
                              child: Image.asset("assets/card_virat2.png"),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 40,
                              color: Colors.lightGreen,
                            ),
                           
                          ],

                        );
                      },
                      ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
