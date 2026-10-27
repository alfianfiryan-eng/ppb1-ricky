void main() {
  List<String> daftarNama = [
    'Andi',
    'Budi',
    'Citra',
    'Dewi'
  ];

  String kataKunci = 'DI';

  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      print(nama);
    }
  }
}