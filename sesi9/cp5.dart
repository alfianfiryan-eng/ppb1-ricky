class Karyawan {
  static const String perusahaan = 'PT HIHUUUU';
  static int jumlahKaryawan = 0;

  late final String id;
  String nama;

  Karyawan(this.nama) {
    jumlahKaryawan++;
    id = 'EMP-$jumlahKaryawan';
  }

  void info() => print('$id | $nama | ${Karyawan.perusahaan}');
}

void main() {
  var k1 = Karyawan('Wowo');
  var k2 = Karyawan('Hihu');
  var k3 = Karyawan('Cihuy');

  k1.info();
  k2.info();
  k3.info();
  print('Total karyawan: ${Karyawan.jumlahKaryawan}');
}
