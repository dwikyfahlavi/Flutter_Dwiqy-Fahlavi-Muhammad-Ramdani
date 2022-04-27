# 27 UI Testing

## Resume 
Pada sub materi ini mempelajari:
- Pengertian UI Testing
- Manfaat UI Testing
- Penggunaan UI Testing

### Pengertian UI Testing
Merupakan suatu pengujian aplikasi pada bagian UI atau tampilan pada aplikasi

### Manfaat UI Testing
- Dengan UI Testing kita dapat memastikan aplikasi dapat menerima interaksi pengguna dan memberi respon balik yang sesuai dan tepat
- Agar tampilan dapat menampilkan data sesuai, dengan itu pengguna tidak akan kebingungan ketika menggunakan aplikasi
- Pada Flutter, disebut widget testing yang mana dilakukan secara automated. Hal ini dilakukan agar mempercepat proses pengujian
- Dapat memastikan ketika terdapat perubahan widget

### Penggunaan UI Testing
- Menggunakan package flutter_test
- flutter_test diinstall melalui dev_dependencies pada file pubspec.yaml
- Membuat file _test.dart pada folder test
- Membuat fungsi-fungsi pada setiap widget agar dapat ditest
- Jalankan flutter test