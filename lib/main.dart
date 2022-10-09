// @dart=2.9

import 'package:flutter/material.dart';
import 'package:halobca/Call.dart';
import 'HomePage.dart';
import 'Chat.dart';
import 'Registrasi.dart';
import 'Call.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo BCA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
