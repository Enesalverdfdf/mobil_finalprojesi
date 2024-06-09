import 'package:http/http.dart' as http;

class Api {
  //Api Class i bizim internetten çekeceğimiz verilerin olduğu sayfadaki verileri url olarak bize döndürüyor ve bu verileri uygulamaya aktarmamız için gerekli set adımlarını gerçekleştiriyor.....
  static Future getTodos() {
    return http.get(Uri.parse(
        //internetten çektğimiz rest-api'nin url adresi
        "https://jsonplaceholder.typicode.com/todos")); //verilerin internet üzerindeki kaynak dosya adresi yolu
  }
}
