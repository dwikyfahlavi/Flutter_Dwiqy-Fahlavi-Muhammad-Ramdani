# 12 Flutter Command Line Interface (CLI) and Flutter package management

## Resume
Pada sub materi ini mempelajari:
1. Flutter CLI
2. Important CLI Commands 
3. Package Management

### Flutter CLI
- Merupakan alat yang digunakan untuk berinteraksi dengan Flutter SDK.
- Perintah dijalankan dalam terminal

### Important CLI Commands 
Terdapat beberapa macam Command yang sangat penting :
- Flutter Doctor
- Flutter Create
- Flutter Run
- Flutter Emulator
- Flutter Channel
- Flutter Pub
- Flutter Build
- Flutter Clean

### Package Management
- Flutter mendukung sharing packages
- Packages dibuat developes lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website pub.dev

    #### Cara Menambahkan Packages
    - Cari package di pub.dev
    - Copy baris dependencies yang ada dibagian installing
    - Buka pubscpec.yaml
    - Paste barisnya dibawah dependecies pubspec.yaml
    - Run flutter pub get di terminal
    - Import package di fule dart agar bisa digunakan
    - Stop atau restart aplikasi jika dibutuhkan