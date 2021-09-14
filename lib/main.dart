import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/pages/whatsapp_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Create UI Whatsapp',
      theme: ThemeData(primarySwatch: Colors.green),
      home: WhatsAppPage(),
    );
  }
}
