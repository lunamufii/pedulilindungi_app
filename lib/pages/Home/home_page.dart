import 'package:flutter/material.dart';

import '../../screens/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // bottomNavigationBar: BottomNavigationPage(),
      body: Center(
        child: Text(
          'Dashboard Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
  // bottomNavigationBar: BottomNavigation(),
  // drawer: Drawer(
  //   child: Container(
  //     decoration:BoxDecoration(
  //         gradient: LinearGradient(
  //             begin: Alignment.topLeft,
  //             end: Alignment.bottomRight,
  //             stops: [0.0, 1.0],
  //             colors: [
  //               Theme.of(context).primaryColor.withOpacity(0.2),
  //               Theme.of(context).accentColor.withOpacity(0.5),
  //             ]
  //         )
  //     ) ,
  //     child: ListView(
  //       children: [
  //         DrawerHeader(
  //           decoration: BoxDecoration(
  //             color: Theme.of(context).primaryColor,
  //             gradient: LinearGradient(
  //               begin: Alignment.topLeft,
  //               end: Alignment.bottomRight,
  //               stops: [0.0, 1.0],
  //               colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
  //             ),
  //           ),
  //           child: Container(
  //             alignment: Alignment.bottomLeft,
  //             child: Text("FlutterTutorial.Net",
  //               style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.screen_lock_landscape_rounded, size: _drawerIconSize, color: Theme.of(context).accentColor,),
  //           title: Text('Splash Screen', style: TextStyle(fontSize: 17, color: Theme.of(context).accentColor),),
  //           onTap: (){
  //             Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(title: "Splash Screen")));
  //           },
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.login_rounded,size: _drawerIconSize,color: Theme.of(context).accentColor),
  //           title: Text('Login Page', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),
  //           ),
  //           onTap: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
  //           },
  //         ),
  //         Divider(color: Theme.of(context).primaryColor, height: 1,),
  //         ListTile(
  //           leading: Icon(Icons.person_add_alt_1, size: _drawerIconSize,color: Theme.of(context).accentColor),
  //           title: Text('Registration Page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
  //           onTap: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()),);
  //           },
  //         ),
  //         Divider(color: Theme.of(context).primaryColor, height: 1,),
  //         ListTile(
  //           leading: Icon(Icons.password_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
  //           title: Text('Forgot Password Page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
  //           onTap: () {
  //             Navigator.push( context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()),);
  //           },
  //         ),
  //         Divider(color: Theme.of(context).primaryColor, height: 1,),
  //         ListTile(
  //           leading: Icon(Icons.verified_user_sharp, size: _drawerIconSize,color: Theme.of(context).accentColor,),
  //           title: Text('Verification Page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
  //           onTap: () {
  //             Navigator.push( context, MaterialPageRoute(builder: (context) => ForgotPasswordVerificationPage()), );
  //           },
  //         ),
  //         Divider(color: Theme.of(context).primaryColor, height: 1,),
  //         ListTile(
  //           leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
  //           title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
  //           onTap: () {
  //             Navigator.push( context, MaterialPageRoute(builder: (context) => LoginPage()), );
  //           },
  //         ),
  //       ],
  //     ),
  //   ),
  // ),
}
