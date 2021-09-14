import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/model/status.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, position) {
        var status = statusList[position];
        return Padding(
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
                      status.name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      status.statusDate,
                      style: TextStyle(color: Colors.black45, fontSize: 16.0),
                    )
                  ],
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
