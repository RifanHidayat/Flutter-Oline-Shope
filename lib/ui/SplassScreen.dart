import 'dart:async';
import 'dart:ffi';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce/TextStyle/constants.dart';
import 'package:ecommerce/ui/BottomBarMenu.dart';
import 'package:ecommerce/ui/Login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplassScreen extends StatefulWidget {
  @override
  _SplassScreenState createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
    body: Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('assets/shop.json',
            width: 150,
            height: 150
          ),
          SizedBox(height: 50,),
          _buildText()

        ],
      ),
    ),

    );
  }
  // ignore: missing_return
  Future<Timer> starTme() async{
    return Timer(Duration(seconds: 3),OnDone);
  }

  Void OnDone(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  Widget _buildText(){
    return Container(
      child: Column(
        children: <Widget>[


          TyperAnimatedTextKit(
            text: ["Kuy Shope"],
            textStyle: textsplassscreen,
          ),


//
//          )
        ],
      ),
    );

  }
  @override
  void initState() {
     starTme();
    super.initState();
  }
}
