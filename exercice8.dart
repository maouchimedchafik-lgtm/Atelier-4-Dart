void main() {
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry');
  var livre2 = Livre('L Etranger', 'Albert Camus');

  livre1.afficherInfos();
  livre2.afficherInfos();
  print('Nombre de pages : ${livre1.pages}');
Livre.afficherTotal();
  var roman1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  var roman2 = Roman('Harry Potter', 'J.K. Rowling', 'Fantastique');

  roman1.afficherGenre();
  roman2.afficherGenre();

  Livre.afficherTotal();
}

class Livre {
  String titre;
  String auteur;

  int _pages = 200;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages {
    return _pages;
  }

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  static void afficherTotal() {
    print('Nombre total de livres : $totalLivres');
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  void afficherGenre() {
    afficherInfos();
    print('Genre : $genre');
  }
}
