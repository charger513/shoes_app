import 'package:flutter/material.dart';
import 'package:shoes_app/src/pages/zapato_desc_page.dart';
import 'package:shoes_app/src/pages/zapato_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ZapatoDescPage()
      ),
    );
  }
}