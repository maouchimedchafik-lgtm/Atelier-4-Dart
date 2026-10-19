class Tache {
  String description;

  static int nombreTotal = 0;
  // Constructeur pour creer une tache
  Tache(this.description) {
    nombreTotal++;
  }
}
void main() {
  var tache1 = Tache('Faire les devoirs');
  var tache2 = Tache('Etudier Dart');
  var tache3 = Tache('Terminer atelier 4');

  print('Nombre total de taches : ${Tache.nombreTotal}');
}