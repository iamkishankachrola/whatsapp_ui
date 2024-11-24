import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/tab_pages/calls_page.dart';
import 'package:whatsapp_ui/tab_pages/camera_page.dart';
import 'package:whatsapp_ui/tab_pages/chats_page.dart';
import 'package:whatsapp_ui/tab_pages/status_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
          backgroundColor: WhatsAppColors.appBarColor,
          foregroundColor: Colors.white,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search))
          ],
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(child:Icon(Icons.camera_alt_rounded,color: Colors.white,),),
                Tab(child: Text("CHATS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                Tab(child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                Tab(child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),

          ]),
        ),
        body: TabBarView(children: [
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}