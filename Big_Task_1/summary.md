# Big Task 1

## Problem 1 - Ganjil atau Genap
1. Pertama buat sebuah fungsi Boolean dengan 1 parameter int
2. Didalam fungsi buatlah sebuah variabel penampung guna hasil akhir yang akan di return
3. Buat if dengan kondisi angka mod 2 hasilnya 0, jika kondisi tersebut terpenuhi maka variabel hasil akan diisi true. Contoh jika kita memasukan angka 10 mod 2 = 0, maka kondisi akan terpenuhi atau true
4. Jika kondisi pertama tidak terpenuhi maka masuk ke else if dengan kondisi angka mod 2 hasilnya 1, jika kondisi terpenuhi maka variabel hasil diisi dengan false
5. Kemudian kita buat fungsi tersebu men-return variabel hasil.

    <a><img src="https://i.imgur.com/KdPmIaD.png" /></a>

6. Kita import library dart:io, berfungsi untuk memanggil stdin.
7. buat void main, lalu buat print "Masukkan Angka :"
8. buat sebuah variabel angka yang diisi dengan inputan user yang sudah di convert menjadi int.
9. terakhir kita membuat print yang didalamnya memanggil fungsi genapGanjil yang telah kita buat tadi dan isi parameter dengan variabel angka.

    <a><img src="https://i.imgur.com/yKDsczy.png" /></a>

    ### Output

    <a><img src="https://i.imgur.com/NzIZBBg.png" /></a>

## Problem 2 - Azimuth / Back - Azimuth
1. Pertama buat sebuah fungsi Integer dengan 1 parameter int
2. Didalam fungsi buatlah sebuah variabel penampung guna hasil akhir yang akan di return
3. Buat if dengan kondisi variabel angka lebih dari sama dengan 180, jika kondisi terpenuhi maka variabel hasil diisi dengan variabel angka - 180
4. jika kondisi if pertama tidak terpenuhi maka lanjut ke else if dengan kondisi variabel angka kurang dari 180, jika kondisi terpenuhi maka variabel hasil diisi dengan variabel angka + 180 
5. buat sebuah if baru dengan kondisi variabel hasil kurang dari 0 atau variabel hasil lebih dari 360, Jika kondisi terpenuhi maka variabel hasil diisi dengan 0
6. Kemudian kita buat fungsi tersebu men-return variabel hasil.

    <a><img src="https://i.imgur.com/nPLgFqn.png" /></a>

7. Kita import library dart:io, berfungsi untuk memanggil stdin.
7. buat void main, lalu buat print "Masukkan Angka :"
8. buat sebuah variabel angka yang diisi dengan inputan user yang sudah di convert menjadi int.
9. terakhir kita membuat print yang didalamnya memanggil fungsi Azimuth yang telah kita buat tadi dan isi parameter dengan variabel angka.

    <a><img src="https://i.imgur.com/0yNQpFA.png" /></a>

    ### Output

    <a><img src="https://i.imgur.com/Q3hatuN.png" /></a>

## Problem 3 - Jam Pasir
1. Pertama buat sebuah void dengan 1 parameter int
2. Didalam Fungsi tersebut buat 2 buah perulangan.
3. perulangan pertama dengan kondisi iterator r = 0, lalu iterator dibandingkan dengan kurang dari sama dengan variabel angka - 1, terakhir iterator ditambah 1
    - didalam perulangan kita membuat perulangan kembali dengan kondisi iterator c = 0, lalu iterator dibandingkan dengan kurang dari variabel r, terakhir iterator ditambah 1. didalam for kita buat stdout.write(" ") yang berfungsi untuk menampilkan spacing pada saat perulangan dijalankan.
    - lalu kita membuat perulangan kembali dengan kondisi iterator c = r, lalu iterator dibandingkan dengan kurang dari sama dengan variabel angka - 1, terakhir iterator ditambah 1. didalam for kita buat stdout.write("* ") yang berfungsi untuk menampilkan bintang piramid terbalik sesuai dengan masukan pada saat perulangan dijalankan.
    - perulangan diakhiri dengan print('\n') yang berguna untuk membuat enter pada setiap perulangan
4. kita membuat perulangan kembali dengan kondisi iterator r = angka - 2, lalu iterator dibandingkan dengan lebih dari sama dengan variabel 0, terakhir iterator dikurang 1
    - didalam perulangan kita membuat perulangan kembali dengan kondisi iterator c = 0, lalu iterator dibandingkan dengan kurang dari variabel r, terakhir iterator ditambah 1. didalam for kita buat stdout.write(" ") yang berfungsi untuk menampilkan spacing pada saat perulangan dijalankan.
    - lalu kita membuat perulangan kembali dengan kondisi iterator c = r, lalu iterator dibandingkan dengan kurang dari sama dengan variabel angka - 1, terakhir iterator ditambah 1. didalam for kita buat stdout.write("* ") yang berfungsi untuk menampilkan bintang piramid sesuai dengan masukan pada saat perulangan dijalankan.
    - perulangan diakhiri dengan print('\n') yang berguna untuk membuat enter pada setiap perulangan
    
    <a><img src="https://i.imgur.com/zJepQiW.png" /></a>
    
5. Kita import library dart:io, berfungsi untuk memanggil stdin.
6. buat void main, lalu buat print "Masukkan Angka :"
7. buat sebuah variabel angka yang diisi dengan inputan user yang sudah di convert menjadi int.
8. terakhir kita membuat print yang didalamnya memanggil fungsi jamPasir yang telah kita buat tadi dan isi parameter dengan variabel angka.

    <a><img src="https://i.imgur.com/hwpipaD.png" /></a>

    ### Output

    <a><img src="https://i.imgur.com/LnJaJlP.png" /></a>

## Problem 4 - Diagonal Angka
1. Pertama buat sebuah void dengan 1 parameter int
2. Didalam Fungsi tersebut buat 1 buah perulangan dengan kondisi iterator r = 1, lalu iterator dibandingkan dengan kurang dari sama dengan variabel angka, lalu iterator di tambah 1
    - kita membuat sebuah perulangan lagi didalam perulangan sebelumnya dengan kondisi iterator c = 0, iterator dibandingkan dengan kurang dari variabel r, lalu iterator ditambah 1. didalam for kita buat stdout.write(" ") yang berfungsi untuk menampilkan spacing pada saat perulangan dijalankan.
    - perulangan diakhiri dengan print('$r') yang berguna untuk menampilkan iterator

    <a><img src="https://i.imgur.com/XSZ0aOu.png" /></a>
    
3. Kita import library dart:io, berfungsi untuk memanggil stdin.
4. buat void main, lalu buat print "Masukkan Angka :"
5. buat sebuah variabel angka yang diisi dengan inputan user yang sudah di convert menjadi int.
6. terakhir kita membuat print yang didalamnya memanggil fungsi diagonal yang telah kita buat tadi dan isi parameter dengan variabel angka.

    <a><img src="https://i.imgur.com/mZaZpnH.png" /></a>

    ### Output

    <a><img src="https://i.imgur.com/pGqyDNK.pngg" /></a>
