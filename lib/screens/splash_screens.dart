import 'dart:async';
import 'package:flutter/material.dart';
import '../pages/Login/login_page.dart';

class SplashScreenWidget extends StatefulWidget {
  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -70,
            left: -116,
            child: Container(
              width: 631,
              height: 788,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(21, 94, 159, 1),
                    Color.fromRGBO(31, 188, 255, 0.6399999856948853)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 858,
            left: 19,
            child: Text(""),
          ),
          Positioned(
            top: 117,
            left: 57,
            child: Container(
              width: 300.0,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/PeduliLindungi.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            top: 371,
            left: 5,
            child: Container(
              width: 383,
              height: 182,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/islands.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 180,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 750,
            left: 25,
            child: Container(
              width: 79,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/KPC PEN.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            top: 755,
            left: 202,
            child: Container(
              width: 74,
              height: 33,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Kemenkes.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            top: 755,
            left: 136,
            child: Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Kominfo.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            top: 664,
            left: 112,
            child: Text(
              "Official Mobile App\n Peduli Lindungi Indonesia",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          Positioned(
            top: 755,
            left: 300,
            child: Container(
              width: 79,
              height: 31,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/BUMN.png'),
                  fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
