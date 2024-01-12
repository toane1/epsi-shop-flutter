class User{
  String nom;
  String prenom;
  String adresse;
  String cedex;
  String ville;

  User({
    required this.nom,
    required this.prenom,
    required this.adresse,
    required this.cedex,
    required this.ville,
  });
  String getUserName() => "${prenom} ${nom}";
  String getAdresse() => "${adresse}";
  String getVille() => "{$cedex} {$ville}";
}
void main() {
  final listUser = [
    User(
        nom: "Michel",
        prenom: "Le Poney",
        adresse: "8 rue des ouvertures de porte",
        cedex: "93204",
        ville: "Corbeaux")
  ];
}