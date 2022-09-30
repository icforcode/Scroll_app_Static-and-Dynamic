import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridview dersleri"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 8,
                    ),
                    /* border: new Border(
                    top: new BorderSide(
                      color: Colors.red,
                      width: 4,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),*/
                    //borderRadius: new BorderRadius.all(new Radius.circular(5)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.shade500,
                        offset: new Offset(10, 5),
                        blurRadius: 20,
                      ),
                    ],
                    shape: BoxShape.circle,
                    /*border: Border.side(
                      color: Colors.blue, width: 4, style: BorderStyle.solid),*/
                    color: Colors.teal[100 * (index + 1 % 8)],
                    gradient: LinearGradient(
                        colors: [Colors.yellow, Colors.red],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    image: DecorationImage(
                        image: AssetImage("assets/images/indir.jpg"),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  // color: Colors.teal[100 * (index + 1 % 8)],
                  child: Text(
                    "flutter $index",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => debugPrint("mrb flutter $index tıklanıldı"),
              onDoubleTap: () => debugPrint("mrb flutter $index cıft tıklandı"),
              onLongPress: () => debugPrint("mrb flutter $index uzun basıldı"),
              onHorizontalDragStart: (e) =>
                  debugPrint("mrb flutter $index uzun basıldı $e"),
            );
          }),
    );
  }

  GridView extentgridview() {
    return GridView.extent(
      maxCrossAxisExtent: 400,
      //reverse: false,
      primary: true,
      scrollDirection: Axis.vertical,
      //scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  GridView countgridview() {
    return GridView.count(
      crossAxisCount: 3,
      reverse: false,
      primary: false,
      // scrollDirection: Axis.vertical,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter 4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
