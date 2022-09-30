import "package:flutter/material.dart";
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
        index + 1, "ogrenci adı  ${index + 1}", "ogrenci soyadi ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: ListView.separated(
        //ListView.builder **ListView.separated**ListView.custom
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color:
                index % 2 == 0 ? Colors.orange.shade200 : Colors.teal.shade300,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                  EasyLoading.instance.textColor = Colors.yellow;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                EasyLoading.showToast("eleman tıklandı",
                    duration: Duration(
                      seconds: 3,
                    ),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
                ;
              },
              onLongPress: () {
                _alertDialogIslemleri(context, oankiOgrenci);
              },
              title: Text(oankiOgrenci.isim),
              subtitle: Text(oankiOgrenci.soyisim),
              leading: CircleAvatar(
                child: Text(oankiOgrenci.id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var yeniIndex = index + 1;
          if (yeniIndex % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.blue,
            );
          }
          return SizedBox();
        },
      ),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(
                    "icthewhirlwind" * 200,
                  )
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("kapat"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("tamam"),
                  ),
                ],
              ),
            ],
          );
        });
  }

  ListView clasicListView() {
    return ListView(
      reverse: true,
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    return "Isım:$isim Soyisim:$soyisim id:$id";
  }
}
