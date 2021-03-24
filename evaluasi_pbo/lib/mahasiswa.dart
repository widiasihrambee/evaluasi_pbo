import 'package:evaluasi_pbo/manusia.dart';

class Mahasiswa extends Manusia {
  String nim, nilai_huruf;
  int nilai_angka;

  String grade_nilai(nilai_angka) {
    if (nilai_angka >= 85 && nilai_angka <= 100) {
      nilai_huruf = 'A';
    } else if (nilai_angka >= 75) {
      nilai_huruf = 'B+';
    } else if (nilai_angka >= 65) {
      nilai_huruf = 'B';
    } else if (nilai_angka >= 60) {
      nilai_huruf = 'C+';
    } else if (nilai_angka >= 55) {
      nilai_huruf = 'C';
    } else if (nilai_angka >= 40) {
      nilai_huruf = 'D';
    } else if (nilai_angka >= 0) {
      nilai_huruf = 'E';
    }
    return nilai_huruf;
  }

  Map<String, dynamic> toMap() {
    return {
      'nim': nim,
      'nama': nama,
      'nilai_angka': nilai_angka,
      'nilai_huruf': grade_nilai(nilai_angka),
    };
  }
}
