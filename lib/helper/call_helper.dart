import 'package:latihan_ui_whatsapp/model/call_item_model.dart';

class CallHelper {
  static var callList = [
    CallItemModel('Anya', 'Today, 04:41 PM'),
    CallItemModel('Jhon', 'Today, 06:00 PM'),
  ];

  static CallItemModel getItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;
}
