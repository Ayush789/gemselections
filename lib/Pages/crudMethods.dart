import 'dart:async';
 
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class crudMedthods {
  // bool isLoggedIn() {
  //   if (FirebaseAuth.instance.currentUser() != null) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
  // Context context;
  // crudMedthods({this.context});

 
  Future<void> addData(order,context) async {
    if (true) {
      Firestore.instance.collection('Orders').add(order).catchError((e) {
         print(e);
      // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Order Sent')));
     
       });
    } else {
      print('You need to be logged in');
            // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Order Sent')));

    }
  }
}