import 'package:fantio/botton_navigation/fantio_page.dart';
import 'package:fantio/botton_navigation/valut_page.dart';
import 'package:fantio/buy_tab/first_page.dart';
import 'package:fantio/buy_tab/help_page.dart';
import 'package:fantio/buy_tab/second_page.dart';
import 'package:fantio/buy_tab/third_page.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle: const TextStyle(fontSize: 14),
            unselectedLabelStyle: const TextStyle(fontSize: 14),
            isScrollable: true,
            indicator: GradientTabIndicator(
              gradient: const LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.pinkAccent,
                  Colors.purple,
                  Colors.blueAccent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              thickness: 4,
              insets: const EdgeInsets.symmetric(horizontal: 4),
            ),
            tabs: const [
              Tab(text: "Pack of Cards"),
              Tab(text: "Single Cards"),
              Tab(text: "Master Place"),
              Tab(icon: Icon(Icons.help)),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [FirstPage(), SecondPage(), ThirdPage(), HelpPage()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FantioPage(),
                    ),
                  );
                },
                child: Icon(Icons.home, color: Colors.white),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Colors.orangeAccent,
                    Colors.purpleAccent,
                    Colors.deepPurple,
                    Colors.blueAccent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: Image.asset("assets/buy_select.png",height: 28,width: 28,
                ),
              ),
              label: "Buy",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/play.png",height: 28,width: 28,),
              label: "Play",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/referral.png",height: 28,width: 28,),
              label: "Referral",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ValutPage()),
                  );
                },
                child: Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xFFFFFFFF)),
              ),
              label: "Vault",
            ),
          ],
        ),
      ),
    );
  }
}

class GradientTabIndicator extends Decoration {
  final LinearGradient gradient;
  final double thickness;
  final EdgeInsetsGeometry insets;

  const GradientTabIndicator({
    required this.gradient,
    this.thickness = 4,
    this.insets = EdgeInsets.zero,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _GradientUnderlinePainter(
      gradient: gradient,
      thickness: thickness,
      insets: insets,
    );
  }
}

class SingleCard {}

class _GradientUnderlinePainter extends BoxPainter {
  final LinearGradient gradient;
  final double thickness;
  final EdgeInsetsGeometry insets;

  _GradientUnderlinePainter({
    required this.gradient,
    this.thickness = 4,
    this.insets = EdgeInsets.zero,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = insets.resolve(TextDirection.ltr).inflateRect(
        Offset(offset.dx, offset.dy) &
            Size(configuration.size!.width, configuration.size!.height));

    final Rect underlineRect = Rect.fromLTWH(
      rect.left,
      rect.bottom - thickness,
      rect.width,
      thickness,
    );

    final Paint paint = Paint()
      ..shader = gradient.createShader(underlineRect)
      ..style = PaintingStyle.fill;

    canvas.drawRect(underlineRect, paint);
  }
}
