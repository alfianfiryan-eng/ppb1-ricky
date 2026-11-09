class User {
  // Property
  String username;
  String email;
  String role;
  bool isActive;

  // Constructor utama dengan named parameter
  User({
    required this.username,
    required this.email,
    this.role = 'member',
    this.isActive = true,
  });

  // Named constructor untuk admin
  User.admin(String username, String email)
    : username = username,
      email = email,
      role = 'admin',
      isActive = true;

  // Named constructor untuk guest
  User.guest()
    : username = 'guest',
      email = '-',
      role = 'viewer',
      isActive = true;

  // Menampilkan profil
  void tampilkanProfil() {
    print('$username | $email | $role | aktif: $isActive');
  }
}

void main() {
  // User biasa
  var user1 = User(username: 'teja', email: 'tejairawan4@mail.com');

  // User admin
  var user2 = User.admin('ricky', 'rickyalfian@kantor.com');

  // User guest
  var user3 = User.guest();

  // Menampilkan profil
  user1.tampilkanProfil();
  user2.tampilkanProfil();
  user3.tampilkanProfil();
}