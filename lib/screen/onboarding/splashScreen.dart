import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../main.dart';
import '../../style/style.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp('/login')));
                },
                icon: SvgPicture.asset("assets/images/abuessa.svg",
                    alignment: Alignment.center),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
