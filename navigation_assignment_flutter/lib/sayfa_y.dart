import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa Y", style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
      backgroundColor: Colors.amber,
      body: const Center(
        child: Text(
          "GERİ TUŞU İLE\nDİREK ANASAYFAYA\nDÖNECEK",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),

      // B ve X sayfalarından gelirken "pushAndRemoveUntil" kullandığımız için,
      // şu an telefonun hafızasında sadece [Anasayfa, Sayfa Y] var.
      // Bu yüzden AppBar'daki sol üstteki geri okuna veya
      // telefonun fiziksel geri tuşuna basıldığında doğal olarak Anasayfa'ya döner

    );
  }
}

