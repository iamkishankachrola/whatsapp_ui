import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/welcome_page.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 500), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage(),));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp_logo.png",width: 90,height: 90,),
            const SizedBox(height: 20,),
            const Text("WhatsApp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
          ],
        ),
      ),
    );
  }
}