import 'dart:io';

class Hewan {
  var nama;
  var berat = 0;
}

class Mobil {
  var kapasitas;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan binatang) {
    if (this.kapasitas >= binatang.berat) {
      this.muatan.add(binatang);
      this.kapasitas -= binatang.berat;
      print('${binatang.nama} berhasil menambahkan hewan kedalam mobil');
    } else {
      print('${binatang.nama} tidak masuk karena Mobil Terlalu Penuh');
    }
  }

  int totalMuatan() {
    var hasil = 0;
    for (var i in muatan) {
      hasil = hasil + i.berat;
    }
    return hasil;
  }
}

void main() {
  var kambing = new Hewan();
  kambing.nama = 'Kambing';
  kambing.berat = 30;

  var sapi = new Hewan();
  sapi.nama = 'Sapi';
  sapi.berat = 60;

  var sapi2 = new Hewan();
  sapi2.nama = 'Sapi2';
  sapi2.berat = 50;

  var truck = Mobil();
  truck.kapasitas = 100;
  truck.tambahMuatan(kambing);
  truck.tambahMuatan(sapi);
  truck.tambahMuatan(sapi2);

  print('Hewan yang berada di dalam mobil : ');
  var iterator = 1;
  for (var i in truck.muatan) {
    print('$iterator. ${i.nama}');
    iterator++;
  }

  print(
      'Total Muatan yang terdapat pada Mobil adalah : ${truck.totalMuatan()}');
}
