import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Json extends StatefulWidget {
 final VoidCallback toggleTheme;
  const Json({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  _JsonState createState() => _JsonState();
}

class _JsonState extends State<Json> {
    void _toggleLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('tr', 'TR'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }

  List? data;
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
              onPressed:_toggleLanguage,
              icon: Icon(Icons.language),
          ),
          IconButton(
              onPressed: () {
              exit(0);
              },
              icon: const Icon(Icons.exit_to_app),
          ),
         ],
        title: Text('JsonPage'.tr()), 
        ),
        body: Container(
          //sayfamızın merkezinde bir container oluşturduk
          child: Center(
            child: FutureBuilder(
              //burada futureBuilder ile özel oluşturduğumuz dosyadan çekilecek verileri container içerisine alıyoruz
              future: DefaultAssetBundle.of(context).loadString(
                  "assets/json/data.json"), //yüklenecek verilerin uzantısı yolu
              builder: (context, snapshot) {
                //snapshot ile resimler sayfanın yani context in içerisine entegre ediliyor
                var mydata = jsonDecode(snapshot.data
                    .toString()); // veriler json formatinda string olarak çekiliyor
                return ListView.builder(
                  //listviewBuilder ile oluşturduğuz listenin içerisine elemanları ekliyoruz
                  itemBuilder: (BuildContext context, int index) {
                    //eklenecek elemanlar tek tek index numarasına göre ekranda gösterilecektir
                    return Column(
                      //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                      children: <Widget>[
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index]["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index]["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 1]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 1]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 1]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 2]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 2]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 2]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 3]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 3]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 3]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 4]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 4]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 4]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 5]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 5]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 5]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // güzel ve effektik gözükmesi için bir card widget tanımladık
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //alt alta yerleştirilecek nesnemiz yatay yani horizontal olarak bütün ekranı kaplaması için crossAxisAlignment.stretch i tanımlıyoruz
                              children: <Widget>[
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 6]
                                          ["name"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 6]["age"]),
                                ),
                                Padding(
                                  //widget i mizin içerisinden padding ile her taraftan sekiz birimlik bir boşluk verdik.
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 6]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: mydata == null ? 0 : mydata.length,
                );
              },
            ),
          ),
        ));
  }
}
