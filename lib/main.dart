import 'package:flutter/material.dart';
import 'package:iih_global/screens/bottomnavigationbar.dart';
import 'package:iih_global/screens/home.dart';
import 'package:iih_global/screens/login_page.dart';
import 'package:iih_global/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    initialRoute: '/',
    routes: {
        '/': (context) => SplashScreen(),
      '/second': (context) => LoginPage(),
      '/third': (context) => MyNavigationBar(),
      '/fourth': (context) => Home(),
    },
    debugShowCheckedModeBanner: false,
    );
  }
}
