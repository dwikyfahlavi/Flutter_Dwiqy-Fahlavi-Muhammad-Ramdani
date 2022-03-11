import 'dart:io';

class BangunRuang {
  var panjang;
  var lebar = 0;
  var tinggi = 0;

  volume() {
    print('Volume Bangun Ruang');
  }
}

class Kubus extends BangunRuang {
  var sisi = 0;

  Kubus(int sisi) {
    this.sisi = sisi;
  }

  @override
  volume() {
    var hasil = sisi * sisi * sisi;
    return hasil;
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi) {
    this.panjang = panjang;
    this.lebar = lebar;
    this.tinggi = tinggi;
  }

  @override
  volume() {
    var hasil = this.panjang * this.lebar * this.tinggi;
    return hasil;
  }
}

void main() {
  print('Penghitung Volume Kubus');
  print('Masukkan Panjang Sisi Kubus :');
  var sisi = int.parse(stdin.readLineSync()!);
  var bangunRuang1 = Kubus(sisi);
  print(
      'Bangun Ruang Kubus dengan \nSisi : $sisi \nVolume : ${bangunRuang1.volume()}\n');

  print('Penghitung Volume Balok');
  print('Masukkan Panjang Balok :');
  var panjang = int.parse(stdin.readLineSync()!);
  print('Masukkan Lebar Balok :');
  var lebar = int.parse(stdin.readLineSync()!);
  print('Masukkan Tinggi Balok :');
  var tinggi = int.parse(stdin.readLineSync()!);

  var bangunRuang2 = Balok(panjang, lebar, tinggi);
  print(
      'Bangun Ruang Balok dengan \nPanjang : $panjang \nLebar : $lebar \nTinggi : $tinggi \nVolume : ${bangunRuang2.volume()}');
}
