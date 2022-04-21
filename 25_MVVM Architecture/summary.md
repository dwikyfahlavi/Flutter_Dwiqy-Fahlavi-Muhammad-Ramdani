# 24 Introduction REST API - JSON serialization/deserialization

## Resume 
Pada sub materi ini mempelajari:
1. REST API
2. HTTP
3. Dio
4. Serialisasi JSON

### REST API
- Merupakan singkatan dari *Representational State Transfer Application Programming Interface*
- REST API biasanya digunakan untuk transaksi data antar aplikasi
- Penggunaan REST API ini dikarenakan untuk memisahkan tampilan dengan proses bisnis
- Proses berkirim data melalui HTTP Requset

### HTTP
- Merupakan singkatan dari *Hypertext Trasnfer Protocol*
- Sebuah jaringan lapisan aplikasi yang digunakan untuk membantu proses pertukaran data dalam internet.
- Pola nya adalah client mengirim request ke server, lalu server mengolah request tersebut dengan memberi response
- Struktur request :
  - URL
  - Method
  - Header
  - Body
- Struktur Reponse :
  - Status Code
  - Header
  - Body

### Dio
- Merupakan sebuah package lutter yang menghandle networking API
- HTTP Client (Request) => Dio => REST API

### Serialisasi JSON
- Mengubah struktur data Map/List menjadi bentuk JSON
- Menggunakan package dart:convert dan fungsi jsonEncode(object)
- Deserialisasi mengubah dari bentuk JSON ke struktur data Map/List
- Menggunakan package dart:convert dan fungsi jsonDecode(object)
