class KalkulatorGaji {
  // Static variable
  static const double persenPajak = 5;

  // Menghitung pajak
  static double hitungPajak(double gajiKotor) {
    return gajiKotor * persenPajak / 100;
  }

  // Menghitung gaji bersih
  static double gajiBersih(
      double gajiPokok, double tunjangan) {
    double totalGaji = gajiPokok + tunjangan;
    double pajak = hitungPajak(totalGaji);

    return totalGaji - pajak;
  }

  // Mencetak slip gaji
  static void slip(
      String nama, double gajiPokok, double tunjangan) {
    double totalGaji = gajiPokok + tunjangan;
    double pajak = hitungPajak(totalGaji);
    double bersih = gajiBersih(gajiPokok, tunjangan);

    print('=== SLIP GAJI: $nama ===');
    print('Gaji Pokok : $gajiPokok');
    print('Tunjangan  : $tunjangan');
    print('Pajak (5%) : $pajak');
    print('Gaji Bersih: $bersih');
    print('--------------------------');
  }
}

void main() {
  // Tidak perlu membuat object

  KalkulatorGaji.slip(
    'Teja',
    8000000,
    1000000,
  );

  KalkulatorGaji.slip(
    'Zaki',
    7000000,
    500000,
  );

  KalkulatorGaji.slip(
    'Ricky',
    10000000,
    2000000,
  );
}