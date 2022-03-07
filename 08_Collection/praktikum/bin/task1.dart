void main() async {
  List angka = [1, 2, 3, 4];
  List hasil = await multiple(angka, 2);
  print('List Awal : $angka x 2');
  print('Hasil Setelah Dikali : $hasil');
}

Future<List> multiple(List list, int pengali) {
  return Future.delayed(Duration(seconds: 2), () {
    List baru = [];
    for (var i in list) {
      i *= pengali;
      baru.add(i);
    }
    return baru;
  });
}
