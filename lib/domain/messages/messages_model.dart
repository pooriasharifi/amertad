class MessagesModel {
  String? name;
  String? lastName;
  String? description;
  String? time;
  String? imgUrl;
  bool? status;

  MessagesModel(
      {this.description,
      this.imgUrl,
      this.lastName,
      this.name,
      this.time,
      this.status});

  static const List<dynamic> data = [
    [
      'Brooklyn',
      'Simmons',
      'How areyou?',
      '08:00',
      'assets/Brooklyn.jpeg',
      false
    ],
    ['Ronald', 'Richards', 'just ideas for next time', '07:12', null, true],
    ['Cameron', 'Williamson', 'perfect!', '00:05', 'assets/Cameron.png', false],
    [
      'Robert',
      'Fox',
      'Haha that\'s terrifying😂',
      '12:34',
      'assets/Robert.png',
      true
    ],
    [
      'Savannah',
      'Nguyen',
      'I\'ll be there in 2 mins',
      '5/27/15',
      'assets/Savannah.png',
      false
    ],
  ];
  static List<MessagesModel> get chats => data
      .map((e) => MessagesModel(
          name: e[0],
          lastName: e[1],
          description: e[2],
          time: e[3],
          imgUrl: e[4],
          status: e[5]))
      .toList();
}
