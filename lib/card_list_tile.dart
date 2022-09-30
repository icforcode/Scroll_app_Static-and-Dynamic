import 'package:flutter/material.dart';

class CardveListTilekullanimi extends StatelessWidget {
  const CardveListTilekullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve List Tile"),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text("selam"),
            ElevatedButton(
              onPressed: () {},
              child: Text("button"),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView SingleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.teal.shade200,
          shadowColor: Colors.amber,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text("Baslık"),
            subtitle: Text("Alt Başlık"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 20,
          endIndent: 60,
        )
      ],
    );
  }
}
