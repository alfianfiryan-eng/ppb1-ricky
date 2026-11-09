class Rekening {
  // Instance variables
  final String nomorRekening;
  String namaPemilik;
  double saldo = 0;
  String? transaksiTerakhir;

  // Constructor
  Rekening(this.nomorRekening, this.namaPemilik);

  // Menambah saldo
  void setor(double jumlah) {
    if (jumlah <= 0) {
      print('Jumlah setor harus lebih dari 0!');
      return;
    }

    saldo += jumlah;
    transaksiTerakhir = 'Setor $jumlah';
  }

  // Mengurangi saldo
  void tarik(double jumlah) {
    if (jumlah <= 0) {
      print('Jumlah tarik harus lebih dari 0!');
    } else if (saldo < jumlah) {
      print('Saldo tidak cukup!');
    } else {
      saldo -= jumlah;
      transaksiTerakhir = 'Tarik $jumlah';
    }
  }

  // Menampilkan saldo dan informasi rekening
  void cekSaldo() {
    print(
      '$nomorRekening | $namaPemilik | '
      'Saldo: $saldo | '
      'Terakhir: ${transaksiTerakhir ?? "-"}',
    );
  }
}

void main() {
  // Membuat dua rekening
  var rekening1 = Rekening('1234567', 'Zaki');
  var rekening2 = Rekening('7654321', 'Teja');

  // Transaksi hanya dilakukan pada rekening Zaki
  rekening1.setor(500000);

  // Menampilkan kedua rekening
  rekening1.cekSaldo();
  rekening2.cekSaldo();

  // Menguji penarikan
  rekening1.tarik(100000);
  rekening1.cekSaldo();
}