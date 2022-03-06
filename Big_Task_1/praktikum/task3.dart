import 'dart:io';

void main() {
  print('Masukkan Angka : ');
  var angka = int.parse(stdin.readLineSync()!);
  jamPasir(angka);
}

void jamPasir(int angka) {
  for (int r = 0; r <= angka - 1; r++) {
    //printing spaces
    for (int c = 0; c < r; c++) stdout.write(" ");
    // printing stars
    for (int c = r; c <= angka - 1; c++) stdout.write("* ");
    //taking to the new line
    print('\n');
  }
  for (int r = angka - 2; r >= 0; r--) {
    //printing spaces
    for (int c = 0; c < r; c++) stdout.write(" ");
    // printing stars
    for (int c = r; c <= angka - 1; c++) {
      stdout.write("* ");
    }
    //taking to the new line
    print('\n');
  }
}
