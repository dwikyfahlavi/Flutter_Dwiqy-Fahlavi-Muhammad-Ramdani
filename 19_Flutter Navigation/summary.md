# 18 Flutter Navigation

## Resume
Pada sub materi ini mempelajari:
1. Apa itu Navigation
2. Navigation Dasar
3. Navigation dengan Named Routes

### Apa itu Navigation
- Merupakan cara untuk berpindah dari halaman 1 ke halaman lainnya
- Biasanya dengan mengklik sebuah button dan akan berpindah ke halaman yang di tuju
- ada dua tipe navigation : navigation dasar dan navigation dengan named routes 

### Navigation Dasar
- Merupakan perpindahan antara halaman dengan menggunakan fungsi yang sangat sederhana
- Navigation dasar dibagi menjadi dua : 
    - Navigation.push, berfungsi untuk berpindah antar halaman.
    - Navigation.pop, berfungsi untuk kembali ke halaman sebelumnya
- jika kita ingin mengirimkan data ke halaman selanjutnya, kita cukup menambahkan parameter di halaman selanjutnya dan kita isi parameter tersebut pada saat pemanggilan nama screen yang di tuju

### Navigation dengan Named Routes
- Merupakan perpindahan antara halaman dengan menggunakan fungsi yang cukup merepotkan tetapi jauh lebih terstruktur
- kita diharuskan mendaftarkan initial route dan tiap tiap router terlebih dahulu, 
- Navigation dasar dibagi menjadi dua : 
    - Navigation.pushNamed, berfungsi untuk berpindah antar halaman.
    - Navigation.pop, berfungsi untuk kembali ke halaman sebelumnya
- jika kita ingin mengirimkan data ke halaman selanjutnya, kita cukup menambahkan argument pada saat pemanggilan nama screen tujuan. dan di halaman tujuan kita ambil argument tersebut agar dapat digunakan
