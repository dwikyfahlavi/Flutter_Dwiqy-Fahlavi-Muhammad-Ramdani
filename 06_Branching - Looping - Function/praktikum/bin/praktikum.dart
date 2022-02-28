void main() {
  //Soal no 1
  var nilai = 100;
  for (var i = 0; i < 10; i++) {
    // menggunakan for agar dapat mengecek apakah semua kondisi bisa berjalan sesuai keinginan.
    nilai -= 25;
    print('Predikat Anda = ${predikat(nilai)}');
    if (nilai == 0) {
      break;
    }
  }
  // Soal no 2
  var a = 10;
  var b = 20;
  var c = 30;
  print('Faktorial dari 10 = ${factorial(a)}');
  print('Faktorial dari 20 = ${factorial(b)}');
  print('Faktorial dari 30 = ${factorial(c)}');
}

String predikat(nilai) {
  String text;
  if (nilai > 70) {
    text = 'A';
  } else if (nilai > 40) {
    text = 'B';
  } else if (nilai > 0) {
    text = 'C';
  } else {
    text = '';
  }
  return text;
}

factorial(n) {
  return n <= 1 ? n : (n.toDouble() * factorial(n - 1));
}
