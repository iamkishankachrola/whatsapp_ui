import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';
import 'colors.dart';

class ProfileInfoPage extends StatelessWidget{
  const ProfileInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                const Text("Profile info",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:WhatsAppColors.buttonColor,),),
                const SizedBox(height: 40,),
                const Text("Please provide your name and an optional",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                const Text("profile photo",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                const SizedBox(height: 30,),
                CircleAvatar(
                  backgroundColor: WhatsAppColors.lightGrayColor,
                  maxRadius: 60,
                  child: Image.asset("assets/images/camera_img.png"),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 60,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: SizedBox(
                          width:300,
                          height: 40,
                          child: TextField(
                            textAlign: TextAlign.start,
                            cursorColor: WhatsAppColors.buttonColor,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: WhatsAppColors.textGrayColor,
                                  width: 1
                                )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: WhatsAppColors.buttonColor
                                )
                              ),
                              hintText: "Type your name here",
                              hintStyle: TextStyle(color: WhatsAppColors.textGrayColor)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Image.asset("assets/images/happy_img.png",width: 40,height: 40,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },style: ElevatedButton.styleFrom(backgroundColor: WhatsAppColors.buttonColor ),
                  child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
          )
        ],
      ),
    );
  }
}