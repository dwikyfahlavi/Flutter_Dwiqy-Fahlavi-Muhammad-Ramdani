# 26 Finite State Machine & Unit Testing

## Resume 
Pada sub materi ini mempelajari:
1. Finite State Machine
2. Unit Test
3. Mocking

### Finite State Machine
- Merupakan mesin yang memiliki beberapa state untuk digunakan pada widget
- tiap state menunjukan apa yang terjadi sebelumnya
- biasanya ada 3 state, none, loading, error
- diterapkan pada state management
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal dijalankan

### Unit Test
- Merupakan pengujian aplikasi pada method/fungsi
- Memastikan fungsi dapat mengolah berbagai jenis input dan sesuai ekspetasi
- Memastikan hasil keluaran fungsi sesuai dengan ekspetasi
- Menjadi dokumentasi
- Terdapat dua jenis unit test, manual dan automated

### Mocking
- Bertujuan untuk melakukan pengujian saat sedang ada masalah sistem eksternal
- Pengaruh tersebut dapat mengganggu proses pengujian
- Contohnya ketika tidak terdapat koneksi internet