import 'dart:async';
import 'dart:convert';
import 'dart:io';

class Mahasiswa {
  /* Attribute */
  String _nim = '';
  String _nama = '';
  String _prodi = '';
  String _fakultas = '';

  /* Constructor */
  Mahasiswa(String nim, String nama, String prodi, String fakultas) {
    this._nim = nim;
    this._nama = nama;
    this._prodi = prodi;
    this._fakultas = fakultas;
  }

  /* Getter & Setter */
  // Setter
  set nim(String nim) {
    this._nim = nim;
  }

  set nama(String nama) {
    this._nama = nama;
  }

  set prodi(String prodi) {
    this._prodi = prodi;
  }

  set fakultas(String fakultas) {
    this._fakultas = fakultas;
  }

  // Getter
  String get nim {
    return _nim;
  }

  String get nama {
    return _nama;
  }

  String get prodi {
    return _prodi;
  }

  String get fakultas {
    return _fakultas;
  }
}

void main() async {
  print('Selamat Datang');
  while (true) {
    print('\nPilih Opsi:');
    print('1. Tambah Mahasiswa');
    print('2. Lihat Mahasiswa');
    print('3. Hapus Mahasiswa');
    print('4. Exit');
    var choice = int.parse(await getInput());
    switch (choice) {
      case 1:
        await addMahasiswa();
        break;
      case 2:
        viewMahasiswa();
        break;
      case 3:
        await removeMahasiswa();
        break;
      case 4:
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

String getInput() {
  var input = stdin.readLineSync(encoding: utf8);
  return input!;
}


List<Mahasiswa> mahasiswaList = [];

Future<void> addMahasiswa() async {
  stdout.write('Input NIM: ');
  var nim = await getInput();

  stdout.write('Input Nama: ');
  var nama = await getInput();

  stdout.write('Input Prodi: ');
  var prodi = await getInput();

  stdout.write('Input Fakultas: ');
  var fakultas = await getInput();

  var mahasiswa = Mahasiswa(nim, nama, prodi, fakultas);
  mahasiswaList.add(mahasiswa);

  print('Mahasiswa berhasil ditambahkan!');
}

void viewMahasiswa() {
  if (mahasiswaList.isEmpty) {
    print('Tidak ada mahasiswa.');
  } else {
    print('List Mahasiswa:');
    for (int i = 0; i < mahasiswaList.length; i++) {
      var mahasiswa = mahasiswaList[i];
      print('Mahasiswa ${i + 1}:');
      print('NIM: ${mahasiswa.nim}');
      print('Nama: ${mahasiswa.nama}');
      print('Prodi: ${mahasiswa.prodi}');
      print('Fakultas: ${mahasiswa.fakultas}\n');
    }
  }
}


Future<void> removeMahasiswa() async {
  if (mahasiswaList.isEmpty) {
    print('Tidak ada mahasiswa yang dihapus.');
    return;
  }

  stdout.write('Masukkan NIM mahasiswa yang akan dihapus: ');
  var nim = await getInput();

  var removedCount = mahasiswaList.where((student) => student.nim == nim).length;
  mahasiswaList.removeWhere((student) => student.nim == nim);

  if (removedCount > 0) {
    print('Mahasiswa dengan NIM $nim sudah terhapus.');
  } else {
    print('Mahasiswa dengan NIM $nim tidak ditemukan dalam daftar.');
  }
}