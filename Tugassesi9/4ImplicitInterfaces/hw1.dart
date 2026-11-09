// Class kontrak
class Penyimpanan {
  String lokasi = '';

  void simpan(String data) {}

  void hapus(String data) {}
}

// Penyimpanan lokal
class LocalStorage implements Penyimpanan {
  @override
  String lokasi = 'Memori HP';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

// Penyimpanan cloud
class CloudStorage implements Penyimpanan {
  @override
  String lokasi = 'Server Cloud';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

// Fungsi backup
void backup(Penyimpanan p, String data) {
  p.simpan(data);
}

void main() {
  var lokal = LocalStorage();
  var cloud = CloudStorage();

  // Backup menggunakan dua penyimpanan
  backup(lokal, 'Catatan Rapat');
  backup(cloud, 'Catatan Rapat');

  // Menguji method hapus
  lokal.hapus('Catatan Rapat');
  cloud.hapus('Catatan Rapat');
}