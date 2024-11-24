import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/enter_phone_number.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 120,),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/welcome_img.png"),
                    maxRadius: 150,
                  ),
                  const SizedBox(height: 60,),
                  const Text("Welcome to WhatsApp",style: TextStyle(fontSize:24),),
                  const SizedBox(height: 10,),
                  RichText(text: const TextSpan(
                    style: TextStyle(fontSize: 14,color:WhatsAppColors.textGrayColor),
                    children: [
                      TextSpan(
                        text: "Read out",
                      ),
                      TextSpan(
                        text: " Privacy Policy.",
                        style: TextStyle(color:WhatsAppColors.textBlueColor)
                      ),
                      TextSpan(
                        text: " Tap \"Agree and continue\""
                      ),
                    ]
                  ) ),
                  RichText(text: const TextSpan(
                    style: TextStyle(fontSize: 14,color: WhatsAppColors.textGrayColor),
                    children: [
                      TextSpan(
                        text: "to accept the"
                      ),
                      TextSpan(
                        text: " Terms of Service.",
                        style: TextStyle(color: WhatsAppColors.textBlueColor)
                      )
                    ],
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const EnterPhoneNumberPage(),));
                  },
                      style: ElevatedButton.styleFrom(backgroundColor: WhatsAppColors.buttonColor,),
                      child: const Text("Agree and continue",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
              )
            ],
          ),
        ),
    );
  }
}