void main() {
  final Hewan = ['Ayam', 'Bebek', 'Ubur-Ubur', 'Icikiwir'];
  for (final hwn in Hewan) {
    if (hwn == 'Icikiwir') {
      print('Data Icikiwir ditemukan, hentikan pencarian.');
      break; // Berhenti loop.
    }
    print('Memeriksa: $hwn');
  }
  print('\nLewati hewan yang bernama Bebek:');
  for (final hwn in Hewan) {
    if (hwn == 'Bebek') {
      continue; // Lewati iterasi ini.
    }
    print('Hewan: $hwn');
  }
}
