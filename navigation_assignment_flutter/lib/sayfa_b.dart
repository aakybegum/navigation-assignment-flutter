
import 'package:flutter/material.dart';
import 'package:navigation_assignment_flutter/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa B", style: TextStyle(fontWeight: FontWeight.bold)),centerTitle: true,),
      backgroundColor: Colors.black38,
      body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[900],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),

            onPressed: (){
              // pushAndRemoveUntil: Yeni sayfaya git, ama giderken aradaki sayfaları SİL.
              // route.isFirst: "Stack'teki ilk sayfa (Anasayfa) kalana kadar her şeyi sil" demektir.
              // Yani [Anasayfa, Sayfa A, Sayfa B] olan listeyi temizler,
              // geriye sadece [Anasayfa, Sayfa Y] bırakır
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const SayfaY()),
                      (Route<dynamic> route) => route.isFirst
              );
            }, child: const Text("GİT -> Y"),
          )
      ),


    );
  }
}
