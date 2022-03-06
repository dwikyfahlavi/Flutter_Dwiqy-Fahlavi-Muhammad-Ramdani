import 'dart:io';

void main() {
  print('Masukkan Angka : ');
  var angka = int.parse(stdin.readLineSync()!);
  print('Angka yang Anda Masukan adalah Angka ${genapGanjil(angka)}');
}

bool genapGanjil(int angka) {
  var hasil;
  if (angka % 2 == 0) {
    hasil = true;
  } else if (angka % 2 == 1) {
    hasil = false;
  }
  return hasil;
}
