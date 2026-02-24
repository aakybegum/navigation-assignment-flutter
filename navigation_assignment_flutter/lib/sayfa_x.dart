
import 'package:flutter/material.dart';
import 'package:navigation_assignment_flutter/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa X", style: TextStyle(fontWeight: FontWeight.bold)),centerTitle: true,),
      backgroundColor: Colors.grey[700],
      body: Center(
        child:
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[900],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),

            onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SayfaY()),
                    (Route<dynamic> route) => route.isFirst,
              );
            }, child: const Text("GİT -> SAYFA Y")),
      ),
    );
  }
}
