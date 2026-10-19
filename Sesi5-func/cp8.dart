void sapa(String nama, [String pesan = "Selamat datang"]) {
  print("Halo $nama, $pesan!");
}

void main() {
  sapa("Bunted");
  sapa("Praroro", "Selamat belajar Dart");
}
