import 'package:flutter/material.dart';
import 'package:ogrenme/kayit_ol.dart';
import 'package:ogrenme/login.dart';

class KararSayfasi extends StatelessWidget {
  const KararSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 128, 20),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HOŞGELDİN..",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.grey,
                    child: TextButton(
                      onPressed: () {
                        girisYapButton_gecis_login_sayfasi(context);
                      },
                      child: const Text(
                        "Giriş yap",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    child: TextButton(
                      onPressed: () {
                        karar_sayfasi_gecis_login(context);
                      },
                      child: const Text(
                        "Kayıt ol",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void girisYapButton_gecis_login_sayfasi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login("", ""),
      ),
    );
  }

  void karar_sayfasi_gecis_login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const KayitOl(),
      ),
    );
  }
}
