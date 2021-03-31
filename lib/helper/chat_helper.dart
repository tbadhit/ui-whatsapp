import 'package:latihan_ui_whatsapp/model/chat_item_model.dart';

class ChatHelper {
  static var chatList = [
    ChatItemModel(
        'Jhon', 'images/person1.png', '31/03/2021', 'Mau kemana besok ni mas?'),
    ChatItemModel('Anya', 'images/person2.png', '31/03/2021',
        'Hayuk makan ke restoran...'),
    ChatItemModel('Jason', 'images/person3.png', '31/03/2021',
        'Hallo apa kabar mas adhit?'),
  ];

  static ChatItemModel getItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
