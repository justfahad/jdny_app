import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
  title: const Text('Profile'),
  centerTitle: true, // Centers the title
  actions: [
    IconButton(onPressed: (){
      FirebaseAuth.instance.signOut();
    }, icon: Icon(Icons.exit_to_app))
  ],
),

      body: const Center(
        child: Text('nothing here'),
      ),
    );
  }
}