import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jdny_app/screen/splash.dart';
import 'firebase_options.dart'; // Make sure to import your generated Firebase options
import 'package:jdny_app/screen/auth.dart';
import 'package:jdny_app/screen/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (ctx,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const splashScreen();
        }
        if(snapshot.hasData){
          return ProfileScreen();
        }
        return AuthScreen();
      }), // Set AuthScreen as the initial screen
    );
  }
}

