import 'package:flutter/material.dart';

class LayoutProblems extends StatelessWidget {
  const LayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Layout Problems"),
      ),
      body: Container(
          child: columnlistesi(),
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.red),
          )),
    );
  }

  Column columnlistesi() {
    return Column(
          children: [
            Text("baslangıc"),
            Expanded(
              child: ListView(
                //shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade100,
                  ),
                ],
              ),
            ),
            Text("bitiş")
          ],
        );
  }
}
