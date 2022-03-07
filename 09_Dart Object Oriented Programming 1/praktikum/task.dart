class Hewan {
  var berat = 0;
}

class Mobil {
  List muatan = [];

  void tambahMuatan(Hewan binatang) {
    this.muatan.add(binatang.berat);
  }
}

void main() {
  var kucing = new Hewan();
  kucing.berat = 5;
  var kucing2 = new Hewan();
  kucing.berat = 10;
  var truck = Mobil();
  truck.tambahMuatan(kucing);
  truck.tambahMuatan(kucing2);
  print(truck.muatan);
}
