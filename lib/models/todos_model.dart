class TodosModel {
  int userId;
  int id;
  String title;
  bool completed;

  TodosModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed});

  factory TodosModel.fromJson(Map<String, dynamic> json) {
    return TodosModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }
}