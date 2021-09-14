import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/model/chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, position) {
        var chat = chatList[position];
        return Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(chat.image))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                chat.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                              Text(
                                chat.messageDate,
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            chat.mostRecentMessage,
                            style: TextStyle(
                                color: Colors.black45, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // UNTUK KASIH GARIS
            Divider(),
          ],
        );
      },
    );
  }
}
