import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/verifying_phone_number.dart';

class  EnterPhoneNumberPage extends StatefulWidget{
   const EnterPhoneNumberPage({super.key});

  @override
  State<EnterPhoneNumberPage> createState() => _EnterPhoneNumberPageState();
}

class _EnterPhoneNumberPageState extends State<EnterPhoneNumberPage> {

  List<String> countryList = ["India","Brazil","United States","Indonesia","Mexico","Russia","Pakistan","Germany","Philippines","Australia" ];
  List<String> countryCode = ["+ 91","+ 55","+ 1","+ 62","+ 52","+ 7","+ 92","+ 49","+ 63","+ 61"];
  String selectedItem = "India";
  String selectedCountryCode = "+ 91";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                const Text("Enter your phone number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:WhatsAppColors.buttonColor,),),
                const SizedBox(height: 40,),
                const Text("WhatsApp will need to verify your phone",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                const Text("number. Carrier charges may apply.",style: TextStyle(color: WhatsAppColors.textGrayColor,fontSize: 14),),
                const Text("What's my number?",style: TextStyle(color: WhatsAppColors.buttonColor,fontSize: 14),),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: DropdownButton(
                    underline: Container(width: double.infinity,height: 1,color: WhatsAppColors.buttonColor,),
                    isExpanded: true,
                    iconSize: 30,
                    iconEnabledColor: Colors.black,
                    value: selectedItem,
                    items:countryList.map((element) => DropdownMenuItem(value: element ,child: Text(element),onTap: () {
                      setState(() {
                        for(int i=0;i<countryList.length;i++){
                          if(countryList[i] == element){
                            selectedCountryCode = countryCode[i];
                          }
                        }
                      });
                    },),).toList() ,
                    onChanged:(value) => setState(() {
                        selectedItem = value!;
                      }), ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 40,
                        child: TextField(
                          textAlign: TextAlign.start,
                          cursorColor: WhatsAppColors.buttonColor,
                         keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: WhatsAppColors.textGrayColor,
                              )
                            ),
                              focusedBorder: const UnderlineInputBorder(
                                 borderSide: BorderSide(
                                   width: 1,
                                   color: WhatsAppColors.buttonColor,
                                 )
                            ),
                            hintText: selectedCountryCode,
                            hintStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      const Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            cursorColor: WhatsAppColors.buttonColor,
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: WhatsAppColors.textGrayColor,
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: WhatsAppColors.buttonColor,
                                  )
                              ),
                              hintText: "phone number",
                              hintStyle: TextStyle(color: WhatsAppColors.textGrayColor)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VerifyingPhoneNumberPage(),));
              },style: ElevatedButton.styleFrom(backgroundColor: WhatsAppColors.buttonColor ),
                  child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
          )
        ],
      ),
    );
  }
}