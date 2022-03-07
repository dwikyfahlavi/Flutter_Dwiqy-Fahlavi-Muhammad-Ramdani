import 'dart:io';

void main() {
  // task1();
  // task2();
  // task3();
  // task4();
  // task5();
  // task6();
  // task7();
  // task8();
  // task9();
  // task10();
  // task11();
  // task12();
  //task13(int.parse(stdin.readLineSync()!));
  //print(task14(int.parse(stdin.readLineSync()!)));
  //task15();
  //task16();
  //task17();
  //task18();
  //task19();
  //task20();
  //task22();
  task24();
}

void task1() {
  print('Hello World!');
}

void task2() {
  print('1. String \n2. Integer \n3. Double \n4. Boolean \n5. List');
}

void task3() {
  var firstName = 'Dwiqy Fahlavi';
  var lastName = 'Muhammad Ramdani';
  var age = 22;
  var height = 172;

  print('Nama Saya : $firstName $lastName \nBerumur : $age \nTinggi : $height');
}

void task4() {
  var title = 'Kimetsu No Yaiba';
  print(
      'Merubah $title Menjadi ${title.toUpperCase()} \nMerubah $title Menjadi ${title.toLowerCase()}');
}

void task5() {
  print('Output dari task 5 : Your name is Dhimas');
}

void task6() {
  var firstName = 'Dwiqy Fahlavi ';
  var lastName = 'Muhammad Ramdani';
  var fullName = firstName + lastName;
  print(fullName.length);
}

void task7() {
  print(
      'string.length, berfungsi untuk mencari jumlah karakter yang terdapat pada suatu variabel string');
  print(
      'string.isEmpty, berfungsi untuk mengecek apakah suatu variabel string itu terdapat data atau tidak jika terdapat data maka akan men-return false dan sebaliknya.');
}

void task8() {
  print(
      'toUpperCase, Berfungsi untuk merubah isi dari suatu variabel string menjadi huruf besar atau Upper case. Contoh Dhimas menjadi DHIMAS');
}

void task9() {
  print('output dari task 9 = x: 2, y: 0, z: 0 ');
}

void task10() {
  print(
      'variabel yang cocok menjadi const yaitu text dan topping, karena kedua variabel tersebut tidak pernah dirubah dan tidak akan bisa dirubah');
  print(
      'variabel yang cocok menjadi final yaitu variabel newText, karena variabel tersebut bersifat final atau hasil akhir, jika kita memakai const hanya dapat diisi dengan value yang sudah pasti');
  print(
      'variabel yang cocok menjadi var yaitu variabel favourite, karena variabel tersebut bersifat flexibel atau dapat diubah kapanpun');
}

void task11() {
  print(null);
}

void task12() {
  print(3);
}

void task13(int suhu) {
  var reamur = 4 / 5 * suhu;
  var farenheit = 9 / 5 * suhu + 32;
  var kelvin = suhu + 273;

  print(
      'Suhu : $suhu C menjadi $reamur R \nSuhu : $suhu C menjadi $farenheit F \nSuhu : $suhu C menjadi $kelvin k ');
}

bool task14(int angka) {
  var hasil;
  if (angka % 2 == 0) {
    hasil = true;
  } else if (angka % 2 == 1) {
    hasil = false;
  }
  return hasil;
}

void task15() {
  print(2);
  print(0);
  print(8);
  print(5.0);
  print(0);
}

void task16() {
  print('Masukkan Angka Pertama :');
  var a = int.parse(stdin.readLineSync()!);
  print('Masukkan Angka Kedua :');
  var b = int.parse(stdin.readLineSync()!);
  print(
      '1. Tambah (+) \n2. Kurang (-) \n3. Kali (X) \n4. Bagi (/)\nMasukkan Pilihan :');
  var c = int.parse(stdin.readLineSync()!);
  var hasil;
  switch (c) {
    case 1:
      hasil = a + b;
      break;
    case 2:
      hasil = a - b;
      break;
    case 3:
      hasil = a * b;
      break;
    case 4:
      hasil = a / b;
      break;
    default:
      print('Angka yang anda masukkan salah');
  }
  print(hasil);
}

void task17() {
  print(true);
  print(false);
}

void task18() {
  print('Jawaban task 18 : B');
}

void task19() {
  List list = [];
  Map map = {};
  print(list);
  print(map);
}

void task20() {
  print([1, 'dua', true]);
}

void task21() {
  print('List Dynamic');
}

void task22() {
  print('{spring: 1, summer: 2, autumn: 3}');
}

void task23() {
  print('String untuk Key nya : Integer untuk Valuenya');
}

void task24() {
  List list = [1, 2, 3, 4, 5];
  num hasil = 0;
  for (var i in list) {
    hasil = hasil + i;
  }
  print(hasil);
}

void task25(){
  var restaurants = [
    {
      'name' : 'Pizza Mario',
      'cuisine' : 'Italian',
      'ratings' : [4.0, 3.5, 4.5],
    },
    {
      'name' : 'Chez',
      'cuisine' : 'Italian',
      'ratings' : [4.0, 3.5, 4.5],
    }
  ]
}