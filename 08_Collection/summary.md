# (08) Advance Function - Async-Await

## What is Collection ?
Collection adalah suatu objek yang bisa digunakan untuk menyimpan sekumpulan objek. Dalam bahasa dart ada 3 jenis collection yaitu List, Set dan Map

### How To Write Anonymous Function
<a><img src="https://i.imgur.com/gC6279k.png" /></a>

## List
List berguna untuk menyimpan informasi secara berurutan, informasi tersebut bisa tersortir atau tidak, data yang diisi bisa bertipe apa saja, panjang datanya bisa berapa saja, dengan List kita bisa menyimpan informasi/data dalam satu tempat. untuk mendeklarasikan List dart menggunakan kurung siku []

<a><img src="https://i.imgur.com/m9FYGdR.png" /></a>

## Set

Set beroperasi mirip dengan List (item ditambah dan dihapus tanpa identifier, tidak seperti Map), tetapi implementasinya sedikit berbeda, Set dalam pemrograman Dart tidak memiliki urutan, oleh karena itu, elemen yang terdapat pada Set tidak memiliki indeks, dan satu hal yang unik dari Set adalah item yang terdapat pada Set tidak boleh ada yang sama atau bersifate unik, misalnya: Set tidak bisa memiliki data integer 250 sebanyak 2 kali atau lebih.

<a><img src="https://i.imgur.com/O87Wgnj.png" /></a>

## Map

Map berguna untuk menyimpan data beserta kuncinya, di bahasa pemorgraman lain, map dikenal dengan nama asosiative array. Ketika kita akan mengambil sebuah data dari sebuah Map, kita akan menggunakan kunci (key), kemudian kita akan mendapatkan nilai berdasarkan kunci tersebut. kunci dan nilai bisa berupa tipe apa saja yang terdapat pada Dart, namum secara umum key akan bertipe String, data pada Map tidak berurutan. tidak seperti List, Map tidak digunakan untuk menyimpan informasi secara berurutan, dengan List, kita mengambil data dengan index yang dimulai dari 0 sampai ke n-1, dimana n adalah jumlah datanya, sedangkan Map indexnya adalah kunci yang kita buat, sebuah Map tidak boleh memiliki kunci yang sama, tetapi bisa memiliki nilai yang sama.

<a><img src="https://i.imgur.com/kTddxXN.png" /></a>


## Task

<a><img src="https://i.imgur.com/57mnwMq.png" /></a>

## Output

### Task 1
<a><img src="https://i.imgur.com/LUsFyjh.pngg" /></a>

### Task 2
<a><img src="https://i.imgur.com/TdkGOfR.png" /></a>

Set setKosong = new Set(); // set kosong
Set elmenDariList = new Set.from(["bumi", "udara","air","api"]); // menciptakan set dari list

elemenDariList.add("api"); // OK, tetapi tidak akan melakukan penambahan karena api sudah ada.

elemenDariList.addAll(["petir","cahaya"]); // menambahkan petir dan cahaya.
elemet.remove("air"); // menghapus air.