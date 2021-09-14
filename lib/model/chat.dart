class Chat {
  String name;
  String image;
  String messageDate;
  String mostRecentMessage;

  Chat(
      this.name, this.image, this.messageDate, this.mostRecentMessage);
}

var chatList = [
  Chat(
      'Jhon', 'images/person1.png', '31/03/2021', 'Mau kemana besok ni mas?'),
  Chat('Anya', 'images/person2.png', '31/03/2021',
      'Hayuk makan ke restoran...'),
  Chat('Jason', 'images/person3.png', '31/03/2021',
      'Hallo apa kabar mas adhit?'),
];