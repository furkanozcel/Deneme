import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ogrenme/anasayfa.dart';
import 'package:ogrenme/kayit_ol.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login(this.yeniKayitKA, this.yeniKayitSifre, {super.key});
  String yeniKayitKA;
  String yeniKayitSifre;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    yeniKayitKaydet();
  }

  TextEditingController controllerKA = TextEditingController();

  TextEditingController controllerSI = TextEditingController();

  String uyariYazisi = "";

  List<String> depoKullaniciAdlari = [
    "Furkan",
    "Hasan",
    "Ali",
    "Berat",
    "Bayram",
  ];

  List<String> depoSifre = [
    "123",
    "456",
    "789",
    "123",
    "456",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Hoşgeldiniz",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              color: const Color.fromARGB(255, 210, 209, 209),
              child: TextField(
                controller: controllerKA,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.black,
                  labelText: "Kullanıcı adı",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              color: const Color.fromARGB(255, 210, 209, 209),
              child: TextField(
                controller: controllerSI,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.black,
                  labelText: "Şifre",
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                girisKontrolEt();
              },
              icon: const Icon(Icons.login),
              color: Colors.black,
              iconSize: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              uyariYazisi,
              style: const TextStyle(color: Colors.red, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  void girisKontrolEt() {
    if (depoKullaniciAdlari.contains(controllerKA.text) &&
        depoSifre.contains(controllerSI.text) &&
        controllerKA.text.isNotEmpty &&
        controllerSI.text.isNotEmpty) {
      login_anasayfa_gecis(context);
    } else {
      setState(() {
        uyariYazisi = "Lütfen bilgilerinizi kontrol edin!!";
      });
    }
  }

  void yeniKayitKaydet() {
    depoKullaniciAdlari.add(widget.yeniKayitKA);
    depoSifre.add(widget.yeniKayitSifre);
  }

  void login_anasayfa_gecis(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Anasayfa(controllerSI.text, controllerKA.text),
      ),
    );
  }
}
