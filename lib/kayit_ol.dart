import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ogrenme/login.dart';

class KayitOl extends StatefulWidget {
  const KayitOl({super.key});

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  TextEditingController controllerYeniKA = TextEditingController();

  TextEditingController controllerYeniSifre = TextEditingController();

  TextEditingController controllerTekrarSifre = TextEditingController();

  String uyariYazisi = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                width: 250,
                child: TextField(
                  obscureText: false,
                  controller: controllerYeniKA,
                  decoration: const InputDecoration(
                    labelText: "Kullanıcı adı",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey,
                width: 250,
                child: TextField(
                  obscureText: false,
                  controller: controllerYeniSifre,
                  decoration: const InputDecoration(
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey,
                width: 250,
                child: TextField(
                  controller: controllerTekrarSifre,
                  decoration: const InputDecoration(
                    labelText: "Şifre tekrar",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  kayitOl(context);
                },
                child: const Text(
                  "Kaydol",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                uyariYazisi,
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void kayitOl(BuildContext context) {
    if (controllerYeniSifre.text == controllerTekrarSifre.text &&
        controllerYeniKA.text.isNotEmpty &&
        controllerYeniSifre.text.isNotEmpty &&
        controllerTekrarSifre.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Login(controllerYeniKA.text, controllerYeniSifre.text),
        ),
      );
    } else {
      setState(() {
        uyariYazisi = "Lütfen girdiğiniz şifreler aynı olsun";
      });
    }
  }
}
