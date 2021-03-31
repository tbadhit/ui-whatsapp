import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/helper/chat_helper.dart';
import 'package:latihan_ui_whatsapp/model/chat_item_model.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        ChatItemModel chatItem = ChatHelper.getItem(position);
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
                        image:
                            DecorationImage(image: AssetImage(chatItem.image))),
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
                                chatItem.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                              Text(
                                chatItem.messageDate,
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            chatItem.mostRecentMessage,
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
            Divider(),
          ],
        );
      },
      itemCount: ChatHelper.itemCount,
    );
  }
}
