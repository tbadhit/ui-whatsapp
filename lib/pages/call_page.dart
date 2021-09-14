import 'package:flutter/material.dart';
import 'package:latihan_ui_whatsapp/model/call.dart';

class CallPage extends StatelessWidget {
  final Color whatsAppLightGreen = Color.fromRGBO(37, 211, 102, 1.0);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, position) {
        var call = callList[position];
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(call.name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              call.callDate,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black45),
                            )
                          ],
                        ),
                        Icon(
                          Icons.call,
                          color: whatsAppLightGreen,
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
    );
  }
}
