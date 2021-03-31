import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/pages/call_page.dart';
import 'package:latihan_ui_whatsapp/pages/chat_page.dart';
import 'package:latihan_ui_whatsapp/pages/status_page.dart';

class WhatsAppPage extends StatefulWidget {
  final String title;

  WhatsAppPage({Key key, this.title}) : super(key: key);

  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  Color whatsAppGreen = Color.fromRGBO(18, 140, 126, 1.0);
  Color whatsAppLightGreen = Color.fromRGBO(37, 211, 102, 1.0);

  TabController tabController;
  var fabIcon = Icons.call;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 4)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        backgroundColor: whatsAppGreen,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              )
            ],
            indicatorColor: Colors.white),
      ),
      body: TabBarView(controller: tabController, children: [
        // CAMERA
        Icon(Icons.camera_alt),

        // CHAT
        ChatPage(),

        // STATUS
        StatusPage(),

        // CALL
        CallPage()
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: whatsAppLightGreen,
      ),
    );
  }
}
