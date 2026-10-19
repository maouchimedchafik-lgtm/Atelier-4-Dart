class Tache {
  String description;

  static int nombreTotal = 0;
  // Constructeur pour creer une tache
  Tache(this.description) {
    nombreTotal++;
  }
}