class Todo{
  late int id;
  late int userId;
  late bool completed;
  late String title;
    Todo(int id, int userId, bool completed, String title) {
    //burada yapıcı method yani constructor ile bu verilerin başka classlardan da çekilmesini ve işlenmesini sağlıyoruz
    //constructor method oluşturduğumuz Todo class i ile aynı isimde olmak zorundadır...!
    this.id = id;
    this.userId = userId;
    this.title = title;
    this.completed = completed;
  }
  
  Todo.fromJson(Map json) {
    //map ile verileri çekiyoruz
    id = json['id'];
    userId = json['userId'];
    completed = json['completed'];
    title = json['title'];
  }

    Map toJson() {
    //toJson ile çekilen verileri ekranda return edip döndürüyoruz
    return {
      "id": id,
      "userıd": userId,
      "completed": completed,
      "title": title,
    };
  }
}
