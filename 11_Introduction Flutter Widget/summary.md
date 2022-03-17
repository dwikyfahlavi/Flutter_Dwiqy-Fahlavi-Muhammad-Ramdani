# (11) introduction Flutter Widget

## What is Flutter ?
Flutter merupakan teknologi milik Google untuk membangun aplikasi dengan tampilan UI yang apik, serta dapat di-compile secara native ke dalam aplikasi mobile, web, dan desktop hanya dari satu basis kode. Flutter menggunakan bahasa Dart, sebuah bahasa pemrograman yang dikembangkan oleh Google. Banyak perusahaan besar dunia yang telah mengadopsi Flutter untuk mengembangkan aplikasi mereka. Sebut saja Google, Alibaba Group, dan Grab. Daftar aplikasi yang dibangun menggunakan Flutter dapat kalian lihat di halaman Flutter Showcase.

<a><img src="https://i.imgur.com/ecpfWSb.png" /></a>

## Kelebihan Flutter
1. ### Cross platform
    Flutter mendukung cross platform alias dapat dijalankan di beberapa platform yang berbeda. Dengan menggunakan Flutter, kita dapat membuat aplikasi Android dan iOS sekaligus. Selain mobile, kita juga dapat membuat aplikasi web dan desktop. Tentunya hal ini akan menghemat waktu. Kita tidak perlu mempelajari bahasa native yang digunakan di masing-masing platform.
2. ### Fast development (Hot reload)
    Flutter memiliki sebuah fitur bernama hot reload. Dengan fitur ini, proses pengembangan aplikasi dapat berjalan lebih cepat dan mudah.. Setelah melakukan perubahan pada kode program, cukup tekan hot reload. Aplikasi akan diperbarui dalam kurun waktu kurang dari 1 detik. Sangat cepat bukan?
    Hot reload bekerja dengan cara menginjeksi kode program yang mengalami 
    perubahan ke dalam Dart Virtual Machine. Setelah virtual machine memperbarui tiap kelas dengan kode program versi terbaru, maka framework Flutter secara otomatis membangun kembali susunan komponen widget sehingga kita dapat dengan cepat melihat perubahan yang terjadi.
3. ### Beautiful UI
    Flutter dirancang untuk mempermudah developer dalam membangun tampilan user interface. Keseluruhan UI pada Flutter dibangun menggunakan widget. Sebagai contoh, jika kita menambahkan sebuah text field, text field tersebut adalah widget. Button dan Image juga merupakan widget. Bahkan untuk mengatur posisi komponen menjadi rata tengah, kita menggunakan center widget. Kita dapat melakukan kustomisasi pada tiap widget. Widget akan menggambarkan seperti apa tampilan yang akan dibuat berdasarkan konfigurasi dan state yang ada. Terdapat 2 set widget, Material Design (Android) dan Cupertino (iOS).

## Widget

Widget adalah Semua komponen seperti button, text, icon dan sebagainya yang membentuk sebuah tampilan atau kerangka aplikasi. Keseluruhan dari aplikasi yang terlihat pada layar merupakan kumpulan widget. Widget pada Flutter sendiri terinspirasi dari React.

<a><img src="https://i.imgur.com/i00ESuk.png" /></a>

Baris kode tersebut terletak pada lib/main.dart yang merupakan file utama yang akan dieksekusi oleh Flutter. File asli dari main.dart tidak berisi seperti itu, kutulis ulang agar lebih sederhana. Kode tersebut akan menampilkan teks "Hello World".

Beberapa contoh Widget yang ada pada kode tadi adalah sebagai berikut:

MaterialApp(), membuat aplikasi menerapkan Material Design (design languaged system milik Google)
Scaffold, sebagai landasan halaman
AppBar(), biasanya menjadi judul (dari sebuah aplikasi atau halaman)
Text(), menampilkan teks dan memberikan style pada teks
Center(), semua Widget yang ada didalam Widget ini akan diletakkan di bagian tengah

## Task

<a><img src="https://i.imgur.com/3ii74n7.png" /></a>
<a><img src="https://i.imgur.com/JZO8WRY.png" /></a>


## Output

### Task 1
<a><img src="https://i.imgur.com/wESikKd.png" /></a>


### Task 2
<a><img src="https://i.imgur.com/Fflpjjw.png" /></a>

