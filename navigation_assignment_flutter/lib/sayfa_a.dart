
import 'package:flutter/material.dart';
import 'package:navigation_assignment_flutter/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa A", style: TextStyle(fontWeight: FontWeight.bold)),centerTitle: true,),
      backgroundColor: Colors.orangeAccent[700],
      body: Center(
        child:
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[900],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaB()));
            }, child: const Text("GİT -> SAYFA B")),
      ),
    );
  }
}
