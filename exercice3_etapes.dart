class Compte {
  final String numeroCompte;
  double _solde;

  Compte(this.numeroCompte, [double solde = 0.0])
      : _solde = solde;
  String get solde {
  return '${_solde.toStringAsFixed(2)} \$';
  }
}