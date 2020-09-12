import 'package:ecommerce/ui/Login.dart';
import 'package:ecommerce/ui/SplassScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      home: SplassScreen(),
    );
  }
}

