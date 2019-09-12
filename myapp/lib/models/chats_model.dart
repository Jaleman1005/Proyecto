class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name,this.message,this.time, this.avatarUrl});
}

List<ChatModel> datos = [
  new ChatModel(
    name:'User 1',
    message: 'Hola Amigos',
    time: '21:02',
    avatarUrl: 'https://randomuser.me/api/portraits/men/48.jpg'),
  new ChatModel(
    name: 'User 2',
    message: 'Buenos días amiguitos',
    time: '21:01',
    avatarUrl: 'https://randomuser.me/api/portraits/men/34.jpg'
  )
];