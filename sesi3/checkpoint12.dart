void main() {
  var mahasiswa = {
  "TI001": "Ricky",
  "TI002": "Teja",
  "TI003": "Zaki",
  };
  
  print("Nama mahasiswa TI001: ${mahasiswa['TI001']}");

  // Menambahkan data baru
  mahasiswa["TI004"] = "Aul";
  print("Jumlah mahasiswa: ${mahasiswa.length}");
  print("Daftar mahasiswa: $mahasiswa");

  // Map konstanta
  final prodi = const {1: "TI", 2: "SI", 3: "MI"};
  print("Kode Prodi: $prodi");
}