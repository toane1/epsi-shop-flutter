import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaiementPage extends StatelessWidget {
  const PaiementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finalisation de la commande"),
      ),
      body: const Column(
              children:[
                Flexible(
                  child:
                    ListView(
                      children: [
                          Text("Récapitulatif de votre commande : " ),
                          Text("Sous-Total"),
                          Text("Vous économisez"),
                          Text("TVA"),
                          Text("TOTAL: "),
                        Spacer(),
                        Text("Récapitulatif de votre commande : " ),
                    ),
                  ],
                ),
              ]
            )
    );
  }
}