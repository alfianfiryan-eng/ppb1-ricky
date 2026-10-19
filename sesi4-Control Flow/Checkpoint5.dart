void main() {
  final Hewan = ['Ayam', 'Ikan', 'Ubur-Ubur', 'Icikiwir'];
  for (final item in Hewan) {
    print('Mencari: $item');
    if (item == 'Ubur-Ubur') {
      print('Hewan ditemukan!');
      break;
    }
  }
}
