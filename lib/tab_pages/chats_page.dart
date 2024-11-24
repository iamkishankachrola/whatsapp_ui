import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  List<Map<String,dynamic>> userData = [
    {
      "image" : "assets/images/beard_man.png",
      "name"  : "Divyesh",
      "message" : "Hello",
      "time" : "6:00 PM",
      "unreadCount" : "1",
    },
    {
      "image" : "assets/images/boy.png",
      "name"  : "Raj",
      "message" : "I am not coming office tomorrow.",
      "time" : "4:30 PM",
      "unreadCount" : "2",
    },
    {
      "image" : "assets/images/girl.png",
      "name"  : "Sayal",
      "message" : "Hii",
      "time" : "4:00 PM",
      "unreadCount" : "1",
    },
    {
      "image" : "assets/images/man.png",
      "name"  : "Parth",
      "message" : "Are you free right now?",
      "time" : "3:40 PM",
      "unreadCount" : "3",
    },
    {
      "image" : "assets/images/woman.png",
      "name"  : "Nirali",
      "message" : "Byy",
      "time" : "2:20 PM",
      "unreadCount" : "2",
    },
    {
      "image" : "assets/images/human.png",
      "name"  : "Yash",
      "message" : "What's up buddy?",
      "time" : "1:05 PM",
      "unreadCount" : "2",
    },
    {
      "image" : "assets/images/man_2.png",
      "name"  : "Sunny",
      "message" : "How are you brother?",
      "time" : "11:45 AM",
      "unreadCount" : "2",
    },
    {
      "image" : "assets/images/woman2.png",
      "name"  : "Vrutika",
      "message" : "Okk",
      "time" : "11:20 AM",
      "unreadCount" : "1",
    },
    {
      "image" : "assets/images/beard_man.png",
      "name"  : "Harsh",
      "message" : "Can we meet today?",
      "time" : "10:54 AM",
      "unreadCount" : "4",
    },
    {
      "image" : "assets/images/boy.png",
      "name"  : "Ravi",
      "message" : "okk bro",
      "time" : "10:22 AM",
      "unreadCount" : "1",
    },
    {
      "image" : "assets/images/man.png",
      "name"  : "Hardik",
      "message" : "no problem",
      "time" : "9:35 AM",
      "unreadCount" : "3",
    },
    {
      "image" : "assets/images/human.png",
      "name"  : "Ajay",
      "message" : "okk, i will tell him.",
      "time" : "8:00 AM",
      "unreadCount" : "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (context, index) {
             return Container(
              width: double.infinity,
              height: 90,
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                 CircleAvatar(
                   radius: 30,
                   backgroundImage: AssetImage(userData[index]["image"]),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(userData[index]["name"],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(userData[index]["time"],style: const TextStyle(fontSize: 16,color: Colors.green),),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(userData[index]["message"],style: const TextStyle(fontSize: 14,color: Colors.grey),),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text(userData[index]["unreadCount"],style: const TextStyle(fontSize: 14,color: Colors.white))),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30,),
                          Divider(height: 1,color: Colors.grey.withOpacity(0.3),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
      ),
    );
  }
}