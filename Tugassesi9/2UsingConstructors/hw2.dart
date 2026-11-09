class Invoice {
  // Property
  String nomor;
  String namaKlien;
  double subtotal;
  double pajak;
  double diskon;

  // Constructor utama
  Invoice({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 0,
  });

  // Named constructor untuk member
  Invoice.member({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
  }) : diskon = 10;

  // Menghitung total invoice
  double hitungTotal() {
    double jumlahDiskon = subtotal * diskon / 100;
    double hargaSetelahDiskon = subtotal - jumlahDiskon;

    double jumlahPajak = hargaSetelahDiskon * pajak / 100;

    return hargaSetelahDiskon + jumlahPajak;
  }

  // Mencetak rincian invoice
  void cetak() {
    double jumlahDiskon = subtotal * diskon / 100;
    double hargaSetelahDiskon = subtotal - jumlahDiskon;
    double jumlahPajak = hargaSetelahDiskon * pajak / 100;

    print('===== INVOICE =====');
    print('Nomor       : $nomor');
    print('Nama Klien  : $namaKlien');
    print('Subtotal    : Rp $subtotal');
    print('Diskon      : $diskon%');
    print('Nilai Diskon: Rp $jumlahDiskon');
    print('Pajak       : $pajak%');
    print('Nilai Pajak : Rp $jumlahPajak');
    print('Total       : Rp ${hitungTotal()}');
    print('===================');
  }
}

void main() {
  // Invoice biasa
  var invoice1 = Invoice(
    nomor: 'INV001',
    namaKlien: 'Zaki',
    subtotal: 1000000,
  );

  // Invoice member
  var invoice2 = Invoice.member(
    nomor: 'INV002',
    namaKlien: 'Bagas',
    subtotal: 1000000,
  );

  // Mencetak invoice
  invoice1.cetak();
  invoice2.cetak();

  // Membandingkan total
  print('Perbandingan Total:');
  print('Invoice biasa : Rp ${invoice1.hitungTotal()}');
  print('Invoice member: Rp ${invoice2.hitungTotal()}');
}