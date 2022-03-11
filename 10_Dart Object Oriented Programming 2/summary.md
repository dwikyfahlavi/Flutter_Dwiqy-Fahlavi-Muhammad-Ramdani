# (10) Dart Object Oriented Programming 2

## What is Constructor ?
Konstruktor dalam bahasa pemrograman dart adalah fungsi khusus dari suatu kelas yang bertanggung jawab untuk menginisialisasi variabel yang ada di suatu kelas. Dart mendefinisikan sebuah konstruktor dengan nama yang sama sebagai suatu kelas. Sebuah konstruktor adalah fungsi dan oleh karena itu kelas ini dapat memiliki parameter. Bagaimanapun, konstruktor tidak dapat memiliki sebuah tipe return, hal ini pun berbeda dengan function. Jika kamu mendeklarasikan sebuah konstruktor, konstruktor tanpa argumen default disediakan untuk Anda.

<a><img src="https://i.imgur.com/BHbgOTZ.png" /></a>

## Inheritance
Inheritance merupakan kemampuan dari suatu program untuk membuat kelas baru dari kelas yang ada. Kelas tersebut adalah kelas yang diperluas untuk membuat kelas yang lebih baru atau dalam dart dikenal dengan istilah parent class atau super class. Sementara kelas  yang baru dibuat disebut dengan child class atau subclass. Sebuah kelas mewarisi dari kelas lain menggunakan kata kunci ‘extends’. Child class mewarisi semua properti dan metode kecuali konstruktor dari parent class. 

<a><img src="https://i.imgur.com/AD5dFiu.png" /></a>

## Interface

Interface dart memberi pengguna blueprint kelas, yang harus diikuti oleh kelas mana pun jika interface kelas itu, yaitu jika kelas mewarisi yang lain, ia harus mendefinisikan ulang setiap fungsi yang ada di dalam kelas interface dengan caranya.

<a><img src="https://i.imgur.com/t4DMSjl.png" /></a>

## Mixin

Mixin adalah cara lainnya untuk memberikan atribut dari suatu kelas ke kelas lainnya tanpa harus menggunakan pewarisan. Tidak seperti kelas yang mengimplementasikan interfaces, kelas yang menggunakan mixins tidak perlu mendefenisikan ulang metode yang terdapat pada kelas asalnya, untuk menggunakan mixins pada pemrograman Dart digunakan keyword "with".

Hal yang perlu diperhatikan pada saat membuat kelas menjadi mixin adalah:

- Tidak boleh ada deklarasi konstruktor
- Bukan merupakan subclass dari kelaslainnya selain Object (tidak boleh menerima pewarisan)
- Tidak boleh memanggil metode menggunakan keyword "super".


<a><img src="https://i.imgur.com/FMx4xta.png" /></a>

## Task

<a><img src="https://i.imgur.com/Y93qE7h.png" /></a>
<a><img src="https://i.imgur.com/TDx61Ex.png" /></a>


## Output

### Task 1
<a><img src="https://i.imgur.com/CEEscGb.png" /></a>


### Task 2
<a><img src="https://i.imgur.com/ueeGkFz.png" /></a>

