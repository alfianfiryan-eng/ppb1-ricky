class Produk {
  // Property
  String kode;
  String nama;
  double harga;
  int stok;

  // Constructor
  Produk(this.kode, this.nama, this.harga, this.stok);

  // Menambah stok
  void tambahStok(int jumlah) {
    if (jumlah <= 0) {
      print('Jumlah harus lebih dari 0!');
      return;
    }

    stok += jumlah;
    print('Stok ditambah $jumlah, stok sekarang: $stok');
  }

  // Mengurangi stok
  void kurangiStok(int jumlah) {
    if (jumlah <= 0) {
      print('Jumlah harus lebih dari 0!');
    } else if (stok < jumlah) {
      print('Stok tidak mencukupi!');
    } else {
      stok -= jumlah;
      print('Stok dikurangi $jumlah, stok sekarang: $stok');
    }
  }

  // Menampilkan informasi produk
  void tampilkanInfo() {
    print('[$kode] $nama - Rp $harga | Stok: $stok');
  }
}

void main() {
  // Membuat dua object produk
  var produk1 = Produk('P001', 'Mie Sedaap', 3500, 5);
  var produk2 = Produk('P002', 'Indomie', 4000, 10);

  // Menguji method produk pertama
  produk1.tampilkanInfo();
  produk1.tambahStok(3);
  produk1.kurangiStok(20);

  print('---');

  // Menguji method produk kedua
  produk2.tampilkanInfo();
  produk2.kurangiStok(2);
  produk2.tambahStok(5);
  produk2.tampilkanInfo();
}