class Antrean {
  // Static variables
  static const String loket = 'CS';
  static int nomorTerakhir = 0;
  static int kuotaHarian = 5;

  // Instance variables
  String namaPengunjung;
  String nomorAntrean = '-';

  // Constructor
  Antrean(this.namaPengunjung) {
    if (kuotaHarian > 0) {
      nomorTerakhir++;

      nomorAntrean =
          '$loket-${nomorTerakhir.toString().padLeft(3, '0')}';

      kuotaHarian--;
    } else {
      print('Kuota hari ini sudah penuh!');
    }
  }

  // Menampilkan antrean
  void tampilkan() {
    print('$namaPengunjung | Nomor Antrean: $nomorAntrean');
  }
}

void main() {
  // Membuat tujuh pengunjung
  var pengunjung1 = Antrean('Andi');
  var pengunjung2 = Antrean('Farid');
  var pengunjung3 = Antrean('Ikhsan');
  var pengunjung4 = Antrean('Teja');
  var pengunjung5 = Antrean('Willy');
  var pengunjung6 = Antrean('Jovan');
  var pengunjung7 = Antrean('Derli');

  // Menampilkan semua pengunjung
  pengunjung1.tampilkan();
  pengunjung2.tampilkan();
  pengunjung3.tampilkan();
  pengunjung4.tampilkan();
  pengunjung5.tampilkan();
  pengunjung6.tampilkan();
  pengunjung7.tampilkan();

  // Menampilkan sisa kuota
  print('Sisa kuota: ${Antrean.kuotaHarian}');
}