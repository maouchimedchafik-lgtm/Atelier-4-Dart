class Compte {
  final String numeroCompte;
  double _solde;

  // Le parametre optionnel permet de conserver _solde prive.
  Compte(this.numeroCompte, [double solde = 0.0]) : _solde = solde;

  String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  final compte = Compte('C001');
  compte.depot(150.0);
  print('Compte : ${compte.numeroCompte}');
  print('Solde : ${compte.solde}');
}