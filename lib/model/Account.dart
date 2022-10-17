class Account {
  String id;
  String name;
  String imagePath;
  DateTime? createdTime;
  DateTime? updatedTime;

  Account({this.id = '', this.name = '', this.imagePath = '',
    this.createdTime, this.updatedTime,});
}