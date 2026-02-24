
import 'package:flutter/material.dart';
import 'package:navigation_assignment_flutter/sayfa_a.dart';
import 'package:navigation_assignment_flutter/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("ANASAYFA", style: TextStyle(fontWeight: FontWeight.bold)), centerTitle: true,),
      backgroundColor: Colors.lightBlue.shade800,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GİT -> A
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),

              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SayfaA())
                );
              },
              child: const Text("GİT -> A "),
            ),

            const SizedBox(height: 20,),

            //GİT X BUTONU
            ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),

                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SayfaX())
                  );
                }, child: const Text("GİT -> X")),

          ],
        ),
      ),


    );
  }
}
