class Vozilo {
  String naziv;
  int godiste;
  double duzinaVozila;
  bool putnickoVozilo;
  List<String>? vlasnici;
  String? trenutniVlasnik;

//Konstruktor
  Vozilo({
    required this.naziv,
    required this.godiste,
    required this.duzinaVozila,
    required this.putnickoVozilo,
    this.vlasnici,
    this.trenutniVlasnik,
  });

//metoda
  int starostVozila(int trenutnaGodina, String vijek,
      {required int mjesec, required int dan}) {
    return trenutnaGodina - godiste;
  }

  void ispisVozila() {
    print(naziv + " " + godiste.toString() + " " + duzinaVozila.toString());
  }

  void ispisiTrenutnogVlasika() {
    print("Vlasnik vozala " + naziv + " je ");
    print(trenutniVlasnik ?? "NEPOZNAT");
  }

  int brojVlasnika() {
    return vlasnici != null ? vlasnici!.length : 0;
  }

  void tipVozil() {
    //true ili false
    if (putnickoVozilo) {
      print("ovo vozilo je putnickog tipa");
    } else {
      print("ovo vozilo nije putnicko");
    }

    putnickoVozilo
        ? print("ovo vozilo je putnickog tipa")
        : print("ovo vozilo nije putnicko");
  }
}
