# (02) Summary Basic Version and Branch Management (Git)

## What is Git ?

Git adalah salah satu sistem pengontrol versi 'Version Control System' pada proyek perangkat lunak yang diciptakan oleh Linus Torvalds. Semua orang yang terlibat dalam pengkodean proyek akan menyimpan database Git, sehingga akan memudahkan dalam mengelola proyek baik online maupun offline.

```
Version control system (VCS) adalah sebuah kumpulan perangkat lunak yang sudah terintegrasi dan digunakan untuk membantu software engineer mengelola perubahan dalam source code dari waktu ke waktu. 
```

## Tools On Git

- Git Config, Berfungsi untuk mengkonfigurasi user kedalam git.
- Git Add, Berfungsi untuk menambahkan file baru ke repository yang dipilih.
- Git Clone, Berfungsi untuk mengkloning repository di github kedalam directory lokal sekaligus bisa meremotnya. 
- Git Push, Berfungsi untuk mengirim perubahan file kedalam repository.
- Git Commit, Berfungsi untuk mengirimkan perubahan dan sekaligus menuliskan catatan perubahan, tetapi tidak akan menyimpan kedalam repository jika belum melakukan git push.
- Git Diff, Berfungsi untuk memperlihatkan perubahan yang terjadi setelah dan sebelum perubahan.
- Git Stash, Berfungsi untuk menyimpan kode yang belum terselesaikan.
- Git Pull / Fetch, Berfungsi untuk mengambil file terbaru dari repository.

## Branches

Branching adalah teknik untuk memisahkan cabang utama ke cabang lain dengan tujuan agar cabang utama tetap bisa dijaga kondisinya. Menjaga kondisi cabang utama agar tetap stabil atau baik sangatlah penting dalam pengelolaan file karena kita tidak pernah tahu akan ada aktivitas apa kedepannya yang dapat merusak cabang utama. Secara konsep, sebelum melakukan perubahan, kita perlu memiliki pegangan yang bisa kita pakai sewaktu-waktu untuk kembali ke titik aman ketika terjadi masalah.

<a><img src="https://i.imgur.com/afHhIH4.png" /></a>

## Task

- Buat sebuah repository di Github
- Implementasikan penggunaan branchung featureA, dan featureB
- Implementasikan intruksi gut untuk push, pull, stash dan merge
- Implementasikan sebuah penanganan **conflict** di branch development ketika setelah merge dari brancg featureA lalu merge dari branch featureB (Conflict bisa terjadi jika kedua branch mengerjakan di file dan line code yang sama)
- Gunakan merge no fast forward
- Kirimkan alamat repository github

Berikut hasil dari praktikum ini.

[Praktikum](https://github.com/dwikyfahlavi/Alterra-task1)

Output :

<a><img src="https://i.imgur.com/tSfW4Uu.png" /></a>
