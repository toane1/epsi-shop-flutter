import 'package:epsi_shop/bo/cart.dart';
import 'package:epsi_shop/bo/user.dart';
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
      body: Column(
              children:[
                const Total(),
                const Spacer(),
                const Text("Adresse de Livraison", textAlign: TextAlign.left,),
                const Adresse(),
                const Text("Récapitulatif de votre commande : ", textAlign: TextAlign.left,),
                const Spacer(),
                const Text("Methodes de Paiement", textAlign: TextAlign.left,),
                const Payer(),
                const Spacer(),
                const Text('En cliquant sur "Confirmer l\'Achat", cous acceptez les Conditions de vente de l\'EPSI Shop International. '
                    'Besoin d\'aide ? Désolé, on ne peut rien faire.\n En poursuivant, vous acceptez les Conditions du fournisseur de paiement CoffeDis'),
                const Spacer(),
                ElevatedButton(
                  child:
                  const Text("Confirmer l'achat"),
                  onPressed: () {  },),


                  ],
    ),
    );
  }
}



class Total extends StatelessWidget {
  const Total({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:ListTile(
        title: const Text("Récapitulatif de votre commande : "),
        subtitle: Column(
            children: [
              Text("Sous-Total : ${context.read<Cart>().priceTotalInEuro()}"),
              const Text("Vous économisez"),
              Text("TVA : ${context.read<Cart>().getTVA()}"),
              Text("TOTAL: ${context.read<Cart>().getTTC()}"),
            ],),
      )
    );
  }
}

class Adresse extends StatelessWidget {
  const Adresse({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child:ListTile(
          subtitle: Column(
            children: [
              Text(user.getUserName()),
              Text(user.getAdresse()),
              Text(user.getVille()),
            ],),
        )
    );
  }
}

class Payer extends StatelessWidget {
  const Payer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child:ButtonBar(
          alignment: MainAxisAlignment.center,
          children:[
            IconButton(
                icon: const Icon(Icons.apple),
                onPressed: () {  },),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.apple),
              onPressed: () {  },),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.apple),
              onPressed: () {  },),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.apple),
              onPressed: () {  },),
            ],
        ),
    );
  }
}

User user = User(
    nom: "Michel",
    prenom: "Le Poney",
    adresse: "8 rue des ouvertures de porte",
    cedex: "93204",
    ville: "Corbeaux");
