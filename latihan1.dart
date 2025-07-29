import 'dart:io';

void main() {

  print("panjang");
  int panjang = int.parse(stdin.readLineSync()!);

  print("lebar");
  int lebar = int.parse(stdin.readLineSync()!);

  print('Hasil ${panjang*lebar*2}');
}