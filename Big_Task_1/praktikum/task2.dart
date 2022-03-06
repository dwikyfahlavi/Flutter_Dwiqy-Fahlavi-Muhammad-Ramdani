import 'dart:io';

void main() {
  print('Masukkan Angka : ');
  var angka = int.parse(stdin.readLineSync()!);
  print('${azimuth(angka)}');
}

int azimuth(int angka) {
  var hasil;
  if (angka >= 180) {
    hasil = angka - 180;
  } else if (angka < 180) {
    hasil = angka + 180;
  }
  if (hasil <= 0 || hasil >= 360) {
    hasil = 0;
  }
  return hasil;
}
