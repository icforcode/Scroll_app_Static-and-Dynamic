import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:liste_turleri/card_list_tile.dart';
import 'package:liste_turleri/gridview.dart';
import 'package:liste_turleri/layout_problems.dart';
import 'package:liste_turleri/list_view_kullanimi.dart';
import 'custom_scroll_ve_silver.dart';

void main() {
  runApp(MyApp());

  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.orange, brightness: Brightness.dark),
      title: 'Material App',
      home: Scaffold(
        body: CollapsableToolbarOrnek(),
      ),
      builder: EasyLoading.init(),
    );
  }
}
