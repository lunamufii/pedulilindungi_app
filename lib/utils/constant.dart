import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color kPrimaryColor = HexColor('#155E9F');
Color kSecondaryColor = HexColor('#1FBCFF');
const kShadowColor = Colors.grey;
const kSuccessColor = Color.fromARGB(255, 98, 213, 101);
const kWrongColor = Color.fromARGB(255, 170, 11, 0);
var secondaryColor = Color(0xFF5593f8);
var primaryColor = Color(0xFF48c9e2);


const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0x155E9F), Color(0x1FBCFF)],
);


void navigatorPushReplace(context, {dynamic page}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => page));
}

void navigatorPush(context, {dynamic page}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => page));
}

void navigatorPop(context) {
  Navigator.of(context).pop();
}

// Future getAuth() async {
//   SharedPreferences session = await SharedPreferences.getInstance();
//   String auth = session.getString('auth').toString();
//   var result = FirebaseDatabase.instance.ref('user').child(auth).get();
//   return result;
// }