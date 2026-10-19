void main() {
  final angkatan = <int, List<String>>{
    2050: ['Bigmo', 'Aristoteles'],
    2051: ['Sule', 'Naruto'],
  };
  outerLoop:
  for (final tahun in angkatan.keys) {
    for (final mhs in angkatan[tahun]!) {
      print('Angkatan $tahun - $mhs');
      if (mhs == 'Sule') {
        print('Berhenti di Sule!');
        break outerLoop; // Hentikan semua loop.
      }
    }
  }
}
