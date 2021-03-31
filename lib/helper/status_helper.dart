import 'package:latihan_ui_whatsapp/model/status_item_model.dart';

class StatusHelper {
  static var statusList = [
    StatusItemModel('Jason', 'Now, 09:00 PM'),
    StatusItemModel('Jhon', 'Yesterday, 13:00 PM'),
    StatusItemModel('Anya', 'Yesterday, 15:02 PM'),
  ];

  static StatusItemModel getItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
