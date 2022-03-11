import 'dart:io';

class Matematika {
  void hasil() {
    print('Hasil dari operasi Matematika');
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  var x = 0;
  var y = 0;

  KelipatanPersekutuanTerkecil(int x, int y) {
    this.x = x;
    this.y = y;
  }

  @override
  int hasil() {
    var kpk = 0;
    for (var i = 0; i <= y; i++) {
      kpk += x;
      if (kpk % y == 0) {
        break;
      }
    }
    return kpk;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  var x = 0;
  var y = 0;

  FaktorPersekutuanTerbesar(int x, int y) {
    this.x = x;
    this.y = y;
  }

  @override
  int hasil() {
    int kecil = 0;
    int fpb = 0;

    if (x > y) {
      kecil = y;
    } else {
      kecil = x;
    }

    for (var i = 1; i <= kecil; i++) {
      var xmod = x % i;
      var ymod = y % i;
      if (xmod == 0 && ymod == 0) {
        fpb = i;
      }
    }
    return fpb;
  }
}

void main() {
  print('Masukkan Angka pertama: ');
  var x = int.parse(stdin.readLineSync()!);
  print('Masukkan Angka Kedua :');
  var y = int.parse(stdin.readLineSync()!);

  var operation = KelipatanPersekutuanTerkecil(x, y);
  var operation2 = FaktorPersekutuanTerbesar(x, y);

  print('KPK dari $x dan $y adalah : ${operation.hasil()}');
  print('FPB dari $x dan $y adalah : ${operation2.hasil()}');
}
