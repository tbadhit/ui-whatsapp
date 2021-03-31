import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/helper/status_helper.dart';
import 'package:latihan_ui_whatsapp/model/status_item_model.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        StatusItemModel statusItemModel = StatusHelper.getItem(position);
        return Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 64.0,
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          statusItemModel.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          statusItemModel.statusDate,
                          style:
                              TextStyle(color: Colors.black45, fontSize: 16.0),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        );
      },
      itemCount: StatusHelper.itemCount,
    );
  }
}
