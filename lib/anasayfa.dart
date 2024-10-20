import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatelessWidget {
  Anasayfa(this.sifre, this.kullaniciAdi, {super.key});
  String kullaniciAdi;
  String sifre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Anasayfa",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kullanıcı Adı : $kullaniciAdi",
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              "Şifre : $sifre",
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
