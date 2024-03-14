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
Program ini menggunakan asynchronous untuk membaca input dari user secara non-blocking menggunakan fungsi `readLineSync` dari pustaka `dart:io`. Selain itu, fungsi-fungsi `addMahasiswa` dan `removeMahasiswa` juga diimplementasikan sebagai asynchronous dengan menggunakan `Future<void>` untuk menangani operasi I/O seperti input dari user.

## Dokumentasi Program 