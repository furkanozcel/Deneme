import 'package:flutter/material.dart';
import 'package:ogrenme/karar_sayfasi.dart';
import 'package:ogrenme/kayit_ol.dart';
import 'package:ogrenme/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KararSayfasi(),
    );
  }
}
