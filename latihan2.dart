import 'dart:io';

void main() {

  print("Masukan NIlai");
  int nilai = int.parse(stdin.readLineSync()!);

 if (nilai % 2==0) {
    print("Nilai genap");
  } else {
    print("Nilai Ganjil");
  }
}