import 'package:flutter/material.dart';
import 'package:whatsapp_ui/profile_info_page.dart';
import 'colors.dart';

class VerifyingPhoneNumberPage extends StatelessWidget{
  const VerifyingPhoneNumberPage({super.key});

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
                const Text("Verifying your number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:WhatsAppColors.buttonColor,),),
                const SizedBox(height: 40,),
                const Text("You've tried to register +911234567890",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                const Text("recently. Wait before requesting an sms or a call.",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                RichText(text: const TextSpan(
                  style: TextStyle(fontSize: 14,color: WhatsAppColors.textGrayColor),
                  children: [
                    TextSpan(
                      text: "with your code."
                    ),
                    TextSpan(
                      text:" Wrong number?",
                      style: TextStyle(color: WhatsAppColors.buttonColor)
                    )
                  ],
                )),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42),
                  child: SizedBox(
                    width: 330,
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom: 8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom: 8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom:8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom:8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom:8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:WhatsAppColors.lightGrayColor
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(bottom:8,left: 10,right: 10),
                                child: TextField(
                                  textAlign:TextAlign.center,
                                  cursorColor: WhatsAppColors.buttonColor,
                                  cursorHeight: 16,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.lightGrayColor
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: WhatsAppColors.buttonColor
                                        )
                                    ),

                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                const Text("Didn't receive code?",style: TextStyle(color: WhatsAppColors.buttonColor,fontSize: 14),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfileInfoPage(),));
              }, style: ElevatedButton.styleFrom(backgroundColor: WhatsAppColors.buttonColor ),
                  child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
          )
        ],
      ),
    );
  }
}