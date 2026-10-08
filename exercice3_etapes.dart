class Compte {
  final String numeroCompte;
  double _solde;

  Compte(this.numeroCompte, [double solde = 0.0])
      : _solde = solde;
}