void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Agus', 'nilai': 80},
    {'nama': 'Budi', 'nilai': 95},
    {'nama': 'Ricky', 'nilai': 100},
  ];

  mahasiswa.sort((a, b) =>
      (b['nilai'] as int).compareTo(a['nilai'] as int));

  for (var mhs in mahasiswa) {
    print('${mhs['nama']}: ${mhs['nilai']}');
  }
}