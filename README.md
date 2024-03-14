# LP1 PROVIS 2024 C1

## Janji
Saya Nabil Hanif Achmaddiredja mengerjakan Latihan Praktikum 1 dalam mata kuliah
Pemrograman Visual dan Piranti Bergerak untuk keberkahanNya maka saya tidak melakukan kecurangan
seperti yang telah dispesifikasikan. Aamiin.

## Deskripsi Program
Program ini adalah sebuah sistem manajemen mahasiswa sederhana yang memungkinkan user untuk menambah, melihat, dan menghapus data mahasiswa. 

## Penjelasan Desain Program
Program ini dirancang untuk memungkinkan user untuk berinteraksi dengan data mahasiswa melalui user interface konsol. user dapat memilih opsi untuk menambah, melihat, atau menghapus data mahasiswa sesuai kebutuhan. Data mahasiswa disimpan dalam objek `Mahasiswa` yang merupakan bagian dari desain OOP (Object-Oriented Programming) dari program ini.

## Implementasi OOP
1. Class `Mahasiswa`: Class ini merepresentasikan entitas mahasiswa dan memiliki atribut seperti NIM, nama, program studi, dan fakultas. Class ini memiliki konstruktor untuk inisialisasi objek, serta getter dan setter untuk mengakses dan mengubah atribut.

## Implementasi Asynchronous
Program ini menggunakan asynchronous untuk membaca input dari user secara non-blocking menggunakan fungsi `readLineSync` dari library `dart:io`. Selain itu, fungsi-fungsi `addMahasiswa` dan `removeMahasiswa` juga diimplementasikan sebagai asynchronous dengan menggunakan `Future<void>` untuk menangani operasi I/O seperti input dari user.

## Dokumentasi Program 
![Screenshot 2024-03-14 163424](https://github.com/NabilHanifA/LP1PROVIS2024C1/assets/133948088/67370e8b-555d-4865-aede-53061859e20d)
![Screenshot 2024-03-14 163441](https://github.com/NabilHanifA/LP1PROVIS2024C1/assets/133948088/85637172-d5bb-4e18-bdf3-39a05cd0d385)
![Screenshot 2024-03-14 163459](https://github.com/NabilHanifA/LP1PROVIS2024C1/assets/133948088/25aaab5c-f3d3-406e-9477-c26ec3b2fc24)
