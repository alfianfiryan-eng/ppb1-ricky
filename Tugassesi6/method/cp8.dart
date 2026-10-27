void main() {
  List<String> nama = ['Teja', 'Bagas', 'Toby', 'Zaki'];

  nama.add('Ricky');
  nama.remove('Bagas');
  nama.sort((a, b) => a.compareTo(b));

  print(nama);
  print('Jumlah: ${nama.length}');
}