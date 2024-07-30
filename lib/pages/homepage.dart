import 'package:flutter/material.dart';
import 'package:navigatorwork/pages/menu_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/security.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.blue.withOpacity(0.5),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2),
                  GestureDetector(
                    onTap: () {
                      print("Apretando");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MenuPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.fingerprint_outlined,
                        size: 130,
                      ),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
