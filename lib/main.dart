
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodproject/screens/HomeScreen.dart';
import 'package:foodproject/screens/LoginTab.dart';
import 'package:foodproject/screens/RegisterTab.dart';
import 'package:foodproject/screens/cameraDetection.dart';
import 'package:foodproject/screens/favoriteRecipes.dart';
import 'package:foodproject/screens/moreInfo.dart';
import 'package:foodproject/screens/totalRecipes.dart';
import 'package:provider/provider.dart';
import 'package:camera/camera.dart';

import 'constants.dart';
 List<CameraDescription> cameras={} as List<CameraDescription>;

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  cameras= await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Poppins'
      ),
    );
  }
}






class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),

          child: Image.asset(
            'images/white_version_logo.png',
            width: MediaQuery.of(context).size.width,

          ),
        ));




  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(

        brightness: Brightness.light,
      ),
      initialRoute: HomeScreen.id,

      routes: {
        LoginTab.id: (context)=>LoginTab(),
        RegisterTab.id: (context)=>RegisterTab(),
        HomeScreen.id: (context)=>HomeScreen(),
        FavoriteRecipes.id : (context)=>FavoriteRecipes(),








      },
    );
  }
}