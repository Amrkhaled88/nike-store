import 'package:flutter/material.dart';
import 'package:nike_app/pages/all_items_widget.dart';
import 'package:nike_app/pages/auth.dart';
import 'package:nike_app/pages/home_page.dart';
import 'package:nike_app/pages/itemPage.dart';
import 'package:nike_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFCEDDEE)),
        routes: {
          "/": (context) => HomePage(),
          // "login_page": (context) => LoginPage(),
          "home": (context) => HomePage(),
          // "all_items_widget": (context) => AllItmesWidget(),
          "itemPage": (context) => itemPage(),
        }
        // home: const Auth(),
        );
  }
}
