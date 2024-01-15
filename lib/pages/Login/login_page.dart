import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/theme_helper.dart';
import '../../screens/bottom_navbar.dart';
import '../Home/dashboard.dart';
import '../Home/home_page.dart';
import '../Register/register_page.dart';
import '../widgets/header_widget.dart';
import 'Forgot Password/forgot_password.dart';
import '../../utils/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 350;
  Key _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(
                  200,
                  false,
                  Icons
                      .person_add_alt_1_rounded), //let's create a common header widget
            ),
            Container(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0), // This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Username', 'Masukkan username anda'),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Password', 'Masukkan password anda'),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FormField<bool>(
                                    builder: (state) {
                                      return Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Checkbox(
                                                  value: checkboxValue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkboxValue = value!;
                                                      state.didChange(value);
                                                    });
                                                  }),
                                              Text(
                                                "Remind Me",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              state.errorText ?? '',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .errorColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                    validator: (value) {
                                      if (!checkboxValue) {
                                        return 'You need to accept terms and conditions';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  SizedBox(width: 60),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPasswordPage()),
                                        );
                                      },
                                      child: Text(
                                        "Lupa password ?",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'Masuk'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    //After successful login we will redirect to profile page. Let's create profile page now
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyHomePage()));
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                //child: Text('Don\'t have an account? Create'),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "Belum memiliki akun ? "),
                                  TextSpan(
                                    text: 'Daftar',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegistrationPage()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).accentColor),
                                  ),
                                ])),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
