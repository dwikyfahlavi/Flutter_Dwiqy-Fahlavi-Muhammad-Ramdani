import 'dart:io';

void main() {
  print('Masukkan Angka : ');
  var angka = int.parse(stdin.readLineSync()!);
  diagonal(angka);
}

void diagonal(int angka) {
  for (int r = 1; r <= angka; r++) {
    //printing spaces
    for (int c = 0; c < r; c++) stdout.write(" ");
    // printing number
    stdout.write('$r');
    //taking to the new line
    print('\n');
  }
}
