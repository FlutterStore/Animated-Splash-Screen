import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
        title: 'Clean Code',
        home: AnimatedSplashScreen(
        duration: 3000,
        splash: 'assets/images/flutterpng.png',
        splashIconSize: 200,
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Color(0xff6520CC)));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated Splash Screen",style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Text("Welcome",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
