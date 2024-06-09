import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../service/service.dart';

class RestApi extends StatefulWidget {
   final VoidCallback toggleTheme;
  const RestApi({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  _RestApiState createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
    void _toggleLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('tr', 'TR'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }

  List<Todo> list = <Todo>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //sayfamızın iskeletini oluşturuyoruz
      appBar: AppBar(
         actions: [
          IconButton(
              onPressed: widget.toggleTheme,
              icon: const Icon(Icons.brightness_2_outlined),
          ),
          IconButton(
              onPressed: _toggleLanguage,
              icon: Icon(Icons.language),
          ),
          IconButton(
              onPressed: () {
              exit(0);
              },
              icon: const Icon(Icons.exit_to_app),
          ),
        ],
        //sayfamızın başlığını tanımlıyoruz
        title: Text('RestApiPage'.tr()), //restapi sayfanın başlığı
      ),
      body: ListView.builder(
        //listview.builder ile RestFull yani internetten çektiğimiz verileri listelemek için kullandığımız bir yapıdır.!!
        itemCount: list
            .length, // apiden gelen verilerin boyutu nekadarsa sayisi yani o kadar veri dondurur
        itemBuilder: (context, position) {
          return ListTile(
            //listtile ile listemizdeki elemanlar resim başlık ve altbaşlık olacak şekilde toplu bir şekilde gösterilir bir ürün ü tanıttığımızda kullanılan card yapısı gibi
            leading: CircleAvatar(
              //arkaplanda koyacağımız resimleri circleAvatar ile belirliyoruz başlık olarak ise leading kullandık.
              backgroundColor: Colors.blueGrey,
              child: Text(
                list[position].id.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              list[position].title,
            ),
            subtitle: Text(list[position].completed.toString()),
          );
        },
      ),
    );
  }

  getTodos() {
    // burada getTodos isminde bir method tanımladık ve diyoruz ki verileri getir
    Api.getTodos().then((response) {
      //apiden gelen verileri Api class'ı içerisinden getTodos methodu yardımı ile çekiyoruz
      setState(() {
        //setState ile durum yönetimi yapıp birada list içerisine json'da tanımlı olan verilerimizi tek tek ekliyoruz
        Iterable list = json.decode(response.body);
        //eklenen verileri mapping ile tek tek haritalanarak verilerin ekrandan çekilmesi sağlanıyor
        this.list = list.map((todo) => Todo.fromJson(todo)).toList();
      });
    });
  }
  @override
  void initState() {
    super.initState();
    getTodos();
  }
}
