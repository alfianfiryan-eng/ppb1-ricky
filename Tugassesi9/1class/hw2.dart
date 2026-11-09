class Task {
  // Property
  String judul;
  String assignee;
  String deadline;
  String status = 'To Do';

  // Constructor
  Task(this.judul, this.assignee, this.deadline);

  // Mengubah status menjadi In Progress
  void mulaiKerjakan() {
    status = 'In Progress';
  }

  // Mengubah status menjadi Done
  void selesaikan() {
    status = 'Done';
  }

  // Menampilkan detail task
  void tampilkanTask() {
    print('Judul    : $judul');
    print('Assignee : $assignee');
    print('Deadline : $deadline');
    print('Status   : $status');
    print('--------------------');
  }
}

void main() {
  // Membuat tiga task
  var task1 = Task('Membuat desain aplikasi', 'Ricky', '10 November 2026');

  var task2 = Task('Membuat database', 'Teja', '12 November 2026');

  var task3 = Task('Membuat laporan proyek', 'Zaki', '15 November 2026');

  // Mengubah status setiap task
  task1.mulaiKerjakan();
  task2.selesaikan();
  // task3 dibiarkan berstatus To Do

  // Menampilkan semua task
  task1.tampilkanTask();
  task2.tampilkanTask();
  task3.tampilkanTask();
}