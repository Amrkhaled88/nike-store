import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Image.asset("images/login.png"),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            children: [
              Icon(
                Icons.person,
                size: 27,
                color: Color(0xFF475269),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 250,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Enter Username"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            children: [
              Icon(
                Icons.lock,
                size: 27,
                color: Color(0xFF475269),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 250,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Password'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forget password",
              style: (TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue)),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        InkWell(
          onTap: signIn,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Color(0xFF475269).withOpacity(0.3))],
            ),
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't Have Accoun t ?",
              style: TextStyle(color: Colors.blue.withOpacity(0.8)),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        )
      ]),
    )));
  }
}
