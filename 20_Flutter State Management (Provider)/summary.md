# 20 Flutter State Management

## Resume 
Pada sub materi ini mempelajari:
1. State
2. Global State
3. Cara penggunaan

### State
- Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki **StatefulWidget**

### Global State
- State yang dapat digunakan seluruh widget
- Menggunakan package Provider

### Penggunaan
- Agar antar widget dapat memanfaatkan state yang sama dengan mudah
- Menggunakan method setState()
- Menggunakan Provider dengan cara:
  - Menambahkan package provider
  - Membuat state provider dengan ChangeNotifier dan notifyListener()
  - Daftarkan Provider tersebut ke MultiProvider(ChangeNotifierProvider())
  - Simpan provider ke dalam variabel, dan panggil data melalui getter  